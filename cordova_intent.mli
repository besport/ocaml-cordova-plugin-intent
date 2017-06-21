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
                      my_type:string ->
                      component:string ->
                      extras:int ->
                      intent
[@@js.builder]

val action : intent -> string
val clipItems : intent -> item array
val flags : intent -> string
val my_type : intent -> string
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


type extra_type

val create_extra_type :   
                      (string*string) array ->
                      extra_type
[@@js.builder]

type first_arg

val create_first_arg :   
                      action:string ->
                      ?uri:string ->
                      ?my_type:string ->
                      extras:extras_type ->
                      ?bExpectResult:boolean ->
                      ?requestCode:int ->
                      first_arg
[@@js.builder]


val startActivityForResult :
  my_intent:first_arg ->
  (intent->unit) ->
  (unit->unit) ->
  unit
[@@js.global "window.plugins.intent.startActivityForResult"]

