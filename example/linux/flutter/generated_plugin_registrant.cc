//
//  Generated file. Do not edit.
//

#include "generated_plugin_registrant.h"

#include <keyring_store/keyring_store_plugin.h>

void fl_register_plugins(FlPluginRegistry* registry) {
  g_autoptr(FlPluginRegistrar) keyring_store_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "KeyringStorePlugin");
  keyring_store_plugin_register_with_registrar(keyring_store_registrar);
}
