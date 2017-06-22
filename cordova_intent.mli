(*TODO*)
type item 

val create_item : uri:string ->
                  my_type:string ->
                  extension:string ->
                  item
[@@js.builder]

val uri : item -> string
val my_type : item -> string
val extension : item -> string

type intent

val create_intent :   action:string ->
                      clipItems:item array ->
                      flags:string ->
                      my_type_intent:string ->
                      component:string ->
                      extras:int ->
                      intent
[@@js.builder]

val action : intent -> string
val clipItems : intent -> item array
val flags : intent -> string
val my_type_intent : intent -> string
val component : intent -> string
val extras : intent -> int


val addEventListener :
  string                                            ->
  (unit -> unit)                                    ->
  unit
[@@js.global "document.addEventListener"]

val setNewIntentHandler :
  (intent -> unit)                                    ->
  unit
[@@js.global "window.plugins.intent.setNewIntentHandler"]
