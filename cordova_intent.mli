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

type extras_type
val create_extras_type :   
                      (string*string) array ->
                      extras_type
[@@js.builder]

type intent

val create_intent :   action:string ->
                      clipItems:item array ->
                      flags:string ->
                      my_type:string ->
                      component:string ->
                      extras:extras_type ->
                      intent
[@@js.builder]

val action : intent -> string
val clipItems : intent -> item array
val flags : intent -> string
val my_type : intent -> string
val component : intent -> string
val extras : intent -> extras_type


val addEventListener :
  string                                            ->
  (unit -> unit)                                    ->
  unit
[@@js.global "document.addEventListener"]

val setNewIntentHandler :
  (intent -> unit)                                    ->
  unit
[@@js.global "window.plugins.intent.setNewIntentHandler"]



val startActivity :
  my_intent:intent ->
  (unit->unit) ->
  (unit->unit) ->
  unit
[@@js.global "window.plugins.intent.startActivity"]

