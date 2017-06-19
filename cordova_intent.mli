(*TODO*)
type item = {uri:string ; my_type:string ; extension:string}

val create_item : uri:string ->
                  my_type:string ->
                  extension:string ->
                  item
[@@js.builder]

type intent = {action:string;clipItems:item array;flags:string;my_type:string;component:string;extras:int}


val create_intent :   action:string ->
                      clipItems:item array ->
                      flags:string ->
                      my_type:string ->
                      component:string ->
                      extras:int ->
                      intent
[@@js.builder]

val addEventListener :
  string                                            ->
  (unit -> unit)                                    ->
  unit
[@@js.global "document.addEventListener"]

val setNewIntentHandler :
  (intent -> unit)                                    ->
  unit
[@@js.global "window.plugins.intent.setNewIntentHandler"]



