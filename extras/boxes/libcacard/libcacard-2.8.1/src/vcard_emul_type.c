/*
 *  This file contains utility functions which abstract the different card
 *  types.  The goal is that new card types can easily be added by simply
 *  changing this file and vcard_emul_type.h. It is currently not a requirement
 *  to dynamically add new card types.
 *
 * This work is licensed under the terms of the GNU LGPL, version 2.1 or later.
 * See the COPYING file in the top-level directory.
 */
#include "config.h"

#include <glib.h>

#include <strings.h>
#include "vcardt.h"
#include "vcard_emul_type.h"
#include "cac.h"
#include "gp.h"
#include "msft.h"

VCardStatus vcard_init(VReader *vreader, VCard *vcard,
                       VCardEmulType type, G_GNUC_UNUSED const char *params,
                       unsigned char *const *cert, int cert_len[],
                       VCardKey *key[], int cert_count)
{
    int rv;

    g_debug("%s: called", __func__);

    switch (type) {
    case VCARD_EMUL_NONE:
        break;
    case VCARD_EMUL_CAC:
        rv = cac_card_init(vreader, vcard,
            cert, cert_len, key, cert_count);
        if (rv == VCARD_DONE)
            rv = gp_card_init(vreader, vcard);
        if (rv == VCARD_DONE)
            rv = msft_card_init(vreader, vcard);
        return rv;
    /* add new ones here */
    case VCARD_EMUL_PASSTHRU:
    default:
        g_warn_if_reached();
        break;
    }
    return VCARD_FAIL;
}

VCardEmulType vcard_emul_type_select(G_GNUC_UNUSED VReader *vreader)
{
    /* return the default */
    return VCARD_EMUL_CAC;
}

VCardEmulType vcard_emul_type_from_string(const char *type_string)
{
     if (strcasecmp(type_string, "CAC") == 0) {
        return VCARD_EMUL_CAC;
     }
#ifdef ENABLE_PCSC
     if (strcasecmp(type_string, "PASSTHRU") == 0) {
        return VCARD_EMUL_PASSTHRU;
     }
#endif
     return VCARD_EMUL_NONE;
}
