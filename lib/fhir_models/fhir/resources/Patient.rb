module FHIR
  class Patient < FHIR::Model
    MULTIPLE_TYPES = {
      'deceased' => ['boolean', 'dateTime'],
      'multipleBirth' => ['boolean', 'integer']
    }
    SEARCH_PARAMS = ['active', 'address', 'address-city', 'address-country', 'address-postalcode', 'address-state', 'address-use', 'animal-breed', 'animal-species', 'birthdate', 'death-date', 'deceased', 'email', 'family', 'gender', 'general-practitioner', 'given', 'identifier', 'language', 'link', 'name', 'organization', 'phone', 'phonetic', 'telecom']
    METADATA = {
      'id' => {'type'=>'id', 'path'=>'Patient.id', 'min'=>0, 'max'=>1},
      'meta' => {'type'=>'Meta', 'path'=>'Patient.meta', 'min'=>0, 'max'=>1},
      'implicitRules' => {'type'=>'uri', 'path'=>'Patient.implicitRules', 'min'=>0, 'max'=>1},
      'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-SP', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'type'=>'code', 'path'=>'Patient.language', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
      'text' => {'type'=>'Narrative', 'path'=>'Patient.text', 'min'=>0, 'max'=>1},
      'contained' => {'type'=>'Resource', 'path'=>'Patient.contained', 'min'=>0, 'max'=>Float::INFINITY},
      'extension' => {'type'=>'Extension', 'path'=>'Patient.extension', 'min'=>0, 'max'=>Float::INFINITY},
      'modifierExtension' => {'type'=>'Extension', 'path'=>'Patient.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
      'identifier' => {'type'=>'Identifier', 'path'=>'Patient.identifier', 'min'=>0, 'max'=>Float::INFINITY},
      'active' => {'type'=>'boolean', 'path'=>'Patient.active', 'min'=>0, 'max'=>1},
      'name' => {'type'=>'HumanName', 'path'=>'Patient.name', 'min'=>0, 'max'=>Float::INFINITY},
      'telecom' => {'type'=>'ContactPoint', 'path'=>'Patient.telecom', 'min'=>0, 'max'=>Float::INFINITY},
      'gender' => {'valid_codes'=>{'http://hl7.org/fhir/administrative-gender'=>['male', 'female', 'other', 'unknown', 'male', 'female', 'other', 'unknown']}, 'type'=>'code', 'path'=>'Patient.gender', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/administrative-gender'}},
      'birthDate' => {'type'=>'date', 'path'=>'Patient.birthDate', 'min'=>0, 'max'=>1},
      'deceasedBoolean' => {'type'=>'boolean', 'path'=>'Patient.deceased[x]', 'min'=>0, 'max'=>1},
      'deceasedDateTime' => {'type'=>'dateTime', 'path'=>'Patient.deceased[x]', 'min'=>0, 'max'=>1},
      'address' => {'type'=>'Address', 'path'=>'Patient.address', 'min'=>0, 'max'=>Float::INFINITY},
      'maritalStatus' => {'valid_codes'=>{'http://hl7.org/fhir/v3/MaritalStatus'=>['A', 'D', 'I', 'L', 'M', 'P', 'S', 'T', 'U', 'W'], 'http://hl7.org/fhir/v3/NullFlavor'=>['UNK']}, 'type'=>'CodeableConcept', 'path'=>'Patient.maritalStatus', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/marital-status'}},
      'multipleBirthBoolean' => {'type'=>'boolean', 'path'=>'Patient.multipleBirth[x]', 'min'=>0, 'max'=>1},
      'multipleBirthInteger' => {'type'=>'integer', 'path'=>'Patient.multipleBirth[x]', 'min'=>0, 'max'=>1},
      'photo' => {'type'=>'Attachment', 'path'=>'Patient.photo', 'min'=>0, 'max'=>Float::INFINITY},
      'contact' => {'type'=>'Patient::Contact', 'path'=>'Patient.contact', 'min'=>0, 'max'=>Float::INFINITY},
      'animal' => {'type'=>'Patient::Animal', 'path'=>'Patient.animal', 'min'=>0, 'max'=>1},
      'communication' => {'type'=>'Patient::Communication', 'path'=>'Patient.communication', 'min'=>0, 'max'=>Float::INFINITY},
      'generalPractitioner' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Organization', 'http://hl7.org/fhir/StructureDefinition/Practitioner'], 'type'=>'Reference', 'path'=>'Patient.generalPractitioner', 'min'=>0, 'max'=>Float::INFINITY},
      'managingOrganization' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Organization'], 'type'=>'Reference', 'path'=>'Patient.managingOrganization', 'min'=>0, 'max'=>1},
      'link' => {'type'=>'Patient::Link', 'path'=>'Patient.link', 'min'=>0, 'max'=>Float::INFINITY}
    }

    class Contact < FHIR::Model
      METADATA = {
        'id' => {'type'=>'string', 'path'=>'Contact.id', 'min'=>0, 'max'=>1},
        'extension' => {'type'=>'Extension', 'path'=>'Contact.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'type'=>'Extension', 'path'=>'Contact.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
        'relationship' => {'valid_codes'=>{'http://hl7.org/fhir/v2/0131'=>['BP', 'C', 'CP', 'E', 'EP', 'F', 'I', 'N', 'O', 'PR', 'S', 'U']}, 'type'=>'CodeableConcept', 'path'=>'Contact.relationship', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/v2-0131'}},
        'name' => {'type'=>'HumanName', 'path'=>'Contact.name', 'min'=>0, 'max'=>1},
        'telecom' => {'type'=>'ContactPoint', 'path'=>'Contact.telecom', 'min'=>0, 'max'=>Float::INFINITY},
        'address' => {'type'=>'Address', 'path'=>'Contact.address', 'min'=>0, 'max'=>1},
        'gender' => {'valid_codes'=>{'http://hl7.org/fhir/administrative-gender'=>['male', 'female', 'other', 'unknown', 'male', 'female', 'other', 'unknown']}, 'type'=>'code', 'path'=>'Contact.gender', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/administrative-gender'}},
        'organization' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Organization'], 'type'=>'Reference', 'path'=>'Contact.organization', 'min'=>0, 'max'=>1},
        'period' => {'type'=>'Period', 'path'=>'Contact.period', 'min'=>0, 'max'=>1}
      }
    end

    class Animal < FHIR::Model
      METADATA = {
        'id' => {'type'=>'string', 'path'=>'Animal.id', 'min'=>0, 'max'=>1},
        'extension' => {'type'=>'Extension', 'path'=>'Animal.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'type'=>'Extension', 'path'=>'Animal.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
        'species' => {'valid_codes'=>{'http://snomed.info/sct'=>['125097000', '125099002', '34618005', '425134008', '47290002', '15778005', '396620009', '388445009', '85626006', '132950000']}, 'type'=>'CodeableConcept', 'path'=>'Animal.species', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/animal-species'}},
        'breed' => {'valid_codes'=>{'http://snomed.info/sct'=>['684003', '2124007', '3099004', '3566006', '4574003', '4880003', '5164003', '5345000', '5438004', '6431001', '7843000', '9230001', '9277006', '11967001', '13934009', '16015002', '16042001', '23469003', '24438005', '25660007', '28336001', '28360002', '30089001', '32145006', '39855006', '41706005', '44835005', '45690005', '46392004', '48697009', '50717006', '53360003', '55530007', '59210004', '64158000', '64591001', '65187008', '65492002', '67414001', '67515002', '70431006', '72329005', '72648002', '73191001', '74745008', '79603002', '82440005', '83842004', '86920006', '87962009', '89665001', '89708009', '91460002', '112486002', '112487006', '112496006', '131607005', '131608000', '131609008', '131610003', '131611004', '131612006', '131613001', '131614007', '131615008', '131616009', '131617000', '131618005', '131619002', '131620008', '131621007', '131622000', '131623005', '131624004', '131625003', '131626002', '131627006', '131628001', '131629009', '131630004', '131631000', '131632007', '131633002', '131634008', '131635009', '131636005', '131637001', '131638006', '131639003', '131640001', '131641002', '131642009', '131643004', '131644005', '131645006', '131646007', '131647003', '131648008', '131649000', '131650000', '131651001', '131652008', '131653003', '131654009', '131655005', '131656006', '131657002', '131658007', '131659004', '131660009', '131661008', '131662001', '131663006', '131664000', '131665004', '131666003', '131667007', '131668002', '131669005', '131670006', '131671005', '131672003', '131673008', '131674002', '131675001', '131676000', '131677009', '131678004', '131679007', '131680005', '131681009', '131682002', '131683007', '131684001', '131685000', '131686004', '131687008', '131688003', '131689006', '131690002', '131691003', '131692005', '131693000', '131694006', '131695007', '131696008', '131697004', '131698009', '131699001', '131700000', '131701001', '131702008', '131703003', '131704009', '131705005', '131706006', '131707002', '131708007', '131709004', '131710009', '131711008', '131712001', '131713006', '131714000', '131715004', '131716003', '131717007', '131718002', '131719005', '131720004', '131721000', '131722007', '131723002', '131724008', '131725009', '131726005', '131727001', '131728006', '131729003', '131730008', '131731007', '131732000', '131733005', '131734004', '131735003', '131736002', '131737006', '131738001', '131739009', '131740006', '131741005', '131742003', '131743008', '131744002', '131745001', '131746000', '131747009', '131748004', '131749007', '131750007', '131751006', '131752004', '131753009', '131754003', '131755002', '131756001', '131757005', '131758000', '131759008', '131760003', '131761004', '131762006', '131763001', '131764007', '131765008', '131766009', '131767000', '131768005', '131769002', '131770001', '131771002', '131772009', '131773004', '131774005', '131775006', '131776007', '131777003', '131778008', '131779000', '131780002', '131781003', '131782005', '131783000', '131784006', '131785007', '131786008', '131787004', '131788009', '131789001', '131790005', '131791009', '131792002', '131793007', '131794001', '131795000', '131796004', '131797008', '131798003', '131799006', '131800005', '131801009', '131802002', '131803007', '131810001', '131811002', '131812009', '131813004', '131814005', '131815006', '131816007', '131817003', '131818008', '131820006', '131821005', '131822003', '131823008', '131824002', '131825001', '131826000', '131827009', '131829007', '131830002', '131831003', '131832005', '131833000', '131834006', '131835007', '131836008', '131837004', '131838009', '131839001', '131840004', '131841000', '131843002', '131844008', '131845009', '131847001', '131848006', '131849003', '131850003', '131851004', '131852006', '131853001', '131854007', '131855008', '131856009', '131914009', '131918007', '132681007', '132682000', '132684004', '132685003', '132686002', '132687006', '132688001', '132689009', '132690000', '132697002', '132698007', '132699004', '132700003', '132701004', '132702006', '132703001', '132704007', '132705008', '132706009', '132707000', '132708005', '132709002', '132710007', '132711006', '132712004', '132716001', '132717005', '132718000', '132719008', '132720002', '132721003', '132722005', '132723000', '132724006', '132735001', '132770004', '132783003', '132784009', '132785005', '132786006', '132787002', '132788007', '132789004', '132790008', '132791007', '132792000', '132793005', '132794004', '132795003', '132796002', '132797006', '132798001', '132799009', '132800008', '132801007', '132802000', '132803005', '132804004', '132805003', '132806002', '132807006', '132808001', '132809009', '132810004', '132811000', '132812007', '132813002', '132814008', '132815009', '132845007', '132846008', '132849001', '132851002', '132852009', '132853004', '132854005', '132855006', '132856007', '132857003', '132858008', '132859000', '132860005', '132861009', '132958007', '132959004', '132987008', '132988003', '132989006', '132990002', '132991003', '132992005', '132993000', '133702003', '133703008', '133704002', '133715007', '133716008', '133717004', '133718009', '133719001', '133720007', '133731004', '133732006', '133733001', '133734007', '133735008', '133736009', '133747002', '133748007', '133749004', '133750004', '133751000', '133752007', '133763005', '133764004', '133765003', '133766002', '133767006', '133768001', '133779006', '133780009', '133781008', '133782001', '133783006', '133784000', '133795006', '133796007', '133797003', '133798008', '133799000', '133800001', '133801002', '133802009', '133803004', '133804005', '133805006', '133806007', '133807003', '133808008', '133809000', '133810005', '133811009', '133812002', '133813007', '133814001', '133815000', '133816004', '133817008', '133818003', '133819006', '133820000', '133821001', '133822008', '133823003', '133824009', '133825005', '133826006', '133827002', '133828007', '133829004', '133830009', '133831008', '133832001', '133833006', '133834000', '133835004', '133836003', '133837007', '133838002', '133839005', '133840007', '133841006', '133842004', '406660008', '406722006', '409911001', '125097000', '125099002', '25327001', '125101009', '21208000', '424705003', '427136006', '35354009', '125086000', '133068005', '133069002', '133070001', '133071002', '133120002', '133121003', '133122005', '1247002', '7623008', '22720009', '26837006', '26973000', '41092008', '45790002', '46408008', '47842004', '54098002', '54699009', '55167009', '72394007', '80777007', '90050009', '131862004', '131863009', '131864003', '131865002', '131866001', '131867005', '131868000', '131869008', '131870009', '131871008', '131873006', '131874000', '131875004', '131877007', '131878002', '131880008', '131881007', '131882000', '131883005', '131884004', '131885003', '131886002', '131887006', '131888001', '131889009', '131890000', '131891001', '131892008', '131893003', '131894009', '131895005', '131896006', '131897002', '131898007', '131899004', '131900009', '131901008', '131902001', '131903006', '131904000', '131905004', '131906003', '131907007', '132731005', '132951001', '132952008', '132953003', '132954009', '132955005', '132956006', '132957002', '133044002', '133072009', '133101004', '133116001', '133117005', '133118000', '133119008', '133123000', '133124006', '133125007', '133126008', '133127004', '133128009', '133129001', '133130006', '133131005', '133132003', '133133008', '133134002', '133135001', '133136000', '133137009', '133138004', '133139007', '133140009', '133141008', '133142001', '406711007', '6220006', '19356005', '25813002', '41754002', '54447000', '66168008', '70457009', '89648005', '112488001', '125084002', '131804001', '131805000', '131806004', '131807008', '131808003', '131809006', '131861006', '131908002', '131909005', '131910000', '131911001', '131912008', '131913003', '131916006', '131917002', '131919004', '131920005', '131921009', '131922002', '131923007', '131924001', '131925000', '131926004', '131927008', '131928003', '131929006', '131930001', '131931002', '131932009', '131933004', '131934005', '131935006', '131936007', '131937003', '131947000', '131948005', '131964002', '131972000', '131973005', '131974004', '131975003', '131976002', '131977006', '131978001', '131979009', '131980007', '131981006', '131982004', '131983009', '131984003', '131985002', '131986001', '131987005', '131990004', '131991000', '131993002', '132733008', '132734002', '132736000', '132737009', '132738004', '132739007', '132740009', '132742001', '132743006', '132746003', '132747007', '132748002', '132749005', '132750005', '132751009', '132757008', '132758003', '132759006', '132760001', '132761002', '132765006', '132766007', '132774008', '132775009', '132779003', '132996008', '133016003', '133017007', '133018002', '133019005', '133020004', '133021000', '133023002', '133024008', '133025009', '133026005', '133027001', '133028006', '133029003', '133034004', '133035003', '133043008', '133047009', '133048004', '133049007', '133050007', '133051006', '133052004', '133053009', '133054003', '133055002', '133056001', '133057005', '133058000', '133059008', '133060003', '133061004', '133062006', '133095000', '133096004', '133097008', '133098003', '133099006', '133100003', '133102006', '133103001', '133104007', '133105008', '133106009', '133108005', '133109002', '133110007', '133111006', '133112004', '133113009', '133114003', '133115002', '406714004', '1006005', '4288003', '4960000', '12360007', '13487004', '21295007', '26699009', '34200004', '39532001', '41738000', '51023000', '53567001', '56086005', '58264006', '69067004', '76302002', '76467006', '131938008', '131939000', '131940003', '131941004', '131942006', '131943001', '131944007', '131945008', '131946009', '131949002', '131950002', '131951003', '131952005', '131988000', '131989008', '131992007', '131994008', '132762009', '132764005', '132772007', '132773002', '132776005', '132777001', '132778006', '132960009', '132961008', '132962001', '132963006', '132964000', '132965004', '132966003', '132967007', '132968002', '132969005', '132970006', '132971005', '132972003', '132973008', '132974002', '132975001', '132976000', '132977009', '132978004', '132979007', '132980005', '132981009', '132982002', '132983007', '132984001', '132985000', '132986004', '132994006', '132997004', '133001001', '133010009', '133011008', '133012001', '133013006', '133014000', '133030008', '133031007', '133032000', '133033005', '133036002', '133037006', '133038001', '133039009', '133040006', '133041005', '133042003', '133045001', '133046000', '133063001', '133064007', '133065008', '133066009', '133067000', '133073004', '133074005', '133075006', '133076007', '133077003', '133078008', '133079000', '133080002', '133081003', '133082005', '133083000', '133084006', '133086008', '133087004', '133088009', '133089001', '133090005', '133091009', '133092002', '133093007', '133094001', '133143006', '133145004', '133146003', '133147007', '133148002', '133149005', '133150005', '133151009', '133152002', '133153007', '133154001', '133155000', '133156004', '133157008', '133158003', '133159006', '133160001', '406715003', '406721004', '3997000', '1118004', '1789009', '8089006', '25369002', '31633003', '131872001', '131953000', '131954006', '131955007', '131956008', '131957004', '131958009', '131959001', '131960006', '131962003', '131963008', '131965001', '131966000', '131967009', '131968004', '131969007', '131970008', '131971007', '132741008', '132744000', '132745004', '132995007', '132998009', '132999001', '133000000', '133002008', '133003003', '133004009', '133005005', '133006006', '133007002', '133008007', '133009004', '133015004', '42724005', '133107000', '396488006', '131819000', '131876003', '131879005', '131915005', '131961005', '132732003', '132763004', '132767003', '133022007', '133085007', '133144000', '125092006', '131426006', '131441006', '131442004', '131540009', '131541008', '131542001', '131543006', '131555000', '131556004', '131557008', '131558003', '131559006', '131560001', '131561002', '133290002', '133291003', '133551002', '133552009', '133553004', '133554005', '133575002', '133591004', '131427002', '131428007', '131443009', '131444003', '131445002', '131446001', '131447005', '131562009', '131563004', '131564005', '131565006', '131566007', '131567003', '133292005', '133293000', '133294006', '133295007', '133296008', '133297004', '133298009', '133299001', '133300009', '133301008', '133302001', '133303006', '133304000', '133305004', '133472001', '131429004', '131430009', '131431008', '131448000', '131449008', '131450008', '131451007', '131452000', '131453005', '131454004', '131455003', '131456002', '131458001', '131568008', '131569000', '131570004', '131571000', '131572007', '131573002', '131574008', '131575009', '131576005', '131577001', '133306003', '133307007', '133308002', '133309005', '133310000', '133311001', '133312008', '133313003', '133314009', '133315005', '133316006', '133317002', '133318007', '133319004', '133320005', '133321009', '133322002', '133323007', '133324001', '133325000', '131457006', '131459009', '131460004', '131578006', '131579003', '131580000', '131581001', '131582008', '131583003', '131584009', '133327008', '133328003', '133329006', '133330001', '133331002', '133332009', '133333004', '133334005', '133335006', '133336007', '133337003', '133338008', '133339000', '133340003', '133341004', '133342006', '133343001', '133344007', '133345008', '133346009', '133347000', '133348005', '133349002', '133350002', '133351003', '133353000', '133354006', '133577005', '133578000', '133593001', '131432001', '131461000', '131462007', '131463002', '131464008', '131465009', '131466005', '131467001', '131468006', '131469003', '131470002', '131471003', '131472005', '131473000', '131474006', '131551009', '131585005', '131586006', '131587002', '131588007', '131589004', '131590008', '131591007', '131592000', '131593005', '131594004', '131595003', '131596002', '131597006', '131598001', '131599009', '131600007', '131601006', '131602004', '131603009', '131604003', '131605002', '133355007', '133356008', '133357004', '133358009', '133359001', '133361005', '133362003', '133363008', '133364002', '133365001', '133366000', '133367009', '133368004', '133369007', '133370008', '133371007', '133372000', '133373005', '133374004', '133375003', '133376002', '133377006', '133378001', '133379009', '133380007', '133381006', '133382004', '133383009', '133384003', '133385002', '133387005', '133388000', '133389008', '133390004', '133391000', '133392007', '133393002', '133394008', '133395009', '133396005', '133397001', '133398006', '133405000', '133406004', '133407008', '133408003', '133409006', '133410001', '133411002', '133412009', '133413004', '133420006', '133421005', '133422003', '133423008', '133424002', '133580006', '133581005', '133582003', '131433006', '131434000', '131435004', '131475007', '131476008', '131477004', '131478009', '131479001', '131480003', '131481004', '131482006', '131483001', '131484007', '131485008', '131486009', '131487000', '131488005', '131489002', '131490006', '131491005', '131492003', '131493008', '131494002', '131495001', '131496000', '131497009', '131498004', '131499007', '131500003', '131501004', '131502006', '131503001', '131504007', '131505008', '131506009', '131507000', '131508005', '131509002', '131510007', '131511006', '131512004', '131513009', '131552002', '131554001', '131606001', '133231000', '133232007', '133233002', '133234008', '133235009', '133236005', '133237001', '133238006', '133239003', '133240001', '133241002', '133242009', '133243004', '133244005', '133245006', '133246007', '133247003', '133248008', '133249000', '133250000', '133251001', '133252008', '133253003', '133254009', '133268002', '133326004', '133352005', '133425001', '133426000', '133427009', '133428004', '133429007', '133436008', '133437004', '133438009', '133439001', '133440004', '133441000', '133442007', '133443002', '133444008', '133445009', '133452006', '133453001', '133454007', '133455008', '133456009', '133457000', '133458005', '133459002', '133460007', '133461006', '133468000', '133469008', '133470009', '133471008', '133473006', '133474000', '133475004', '133476003', '133477007', '133484004', '133485003', '133486002', '133487006', '133488001', '133489009', '133490000', '133491001', '133492008', '133493003', '133500008', '133501007', '133502000', '133503005', '133504004', '133505003', '133506002', '133507006', '133508001', '133509009', '133516005', '133517001', '133518006', '133519003', '133520009', '133521008', '133522001', '133523006', '133524000', '133525004', '133532008', '133533003', '133534009', '133535005', '133536006', '133537002', '133538007', '133539004', '133579008', '133583008', '133584002', '133585001', '133590003', '133592006', '409906003', '409908002', '125074003', '131436003', '131437007', '131438002', '131439005', '131440007', '131514003', '131515002', '131516001', '131517005', '131518000', '131519008', '131520002', '131521003', '131522005', '131523000', '131524006', '131525007', '131526008', '131527004', '131528009', '131529001', '131530006', '131531005', '131532003', '131533008', '131534002', '131535001', '131536000', '131537009', '131538004', '131539007', '131544000', '131545004', '131546003', '131547007', '131548002', '131553007', '132780000', '132781001', '132782008', '133255005', '133256006', '133257002', '133258007', '133260009', '133261008', '133262001', '133263006', '133264000', '133265004', '133266003', '133267007', '133269005', '133270006', '133271005', '133272003', '133273008', '133274002', '133275001', '133276000', '133277009', '133278004', '133279007', '133280005', '133281009', '133282002', '133283007', '133284001', '133285000', '133360006', '133386001', '133399003', '133400005', '133401009', '133402002', '133403007', '133404001', '133414005', '133415006', '133416007', '133417003', '133418008', '133419000', '133430002', '133431003', '133432005', '133433000', '133434006', '133435007', '133446005', '133447001', '133448006', '133449003', '133450003', '133451004', '133462004', '133463009', '133464003', '133465002', '133466001', '133467005', '133478002', '133479005', '133480008', '133481007', '133482000', '133483005', '133494009', '133495005', '133496006', '133497002', '133498007', '133499004', '133510004', '133511000', '133512007', '133513002', '133514008', '133515009', '133526003', '133527007', '133528002', '133529005', '133530000', '133531001', '133540002', '133541003', '133542005', '133543000', '133544006', '133545007', '133546008', '133547004', '133548009', '133549001', '133550001', '133555006', '133556007', '133557003', '133558008', '133559000', '133560005', '133561009', '133562002', '133563007', '133564001', '133565000', '133566004', '133567008', '133568003', '133569006', '133570007', '133571006', '133572004', '133576001', '133586000', '133587009', '133588004', '133589007', '133673003', '131549005', '131550005', '133286004', '133287008', '133288003', '133289006', '133573009', '133574003', '22330003', '132004000', '132005004', '132007007', '132008002', '132691001', '132692008', '132693003', '132695005', '132696006', '132713009', '132714003', '132715002', '132726008', '132727004', '132728009', '132729001', '132730006', '132752002', '132753007', '132754001', '132755000', '132756004', '132816005', '132817001', '132818006', '132819003', '132820009', '132821008', '132822001', '132823006', '132824000', '132825004', '132827007', '132828002', '132829005', '132830000', '132831001', '132832008', '132833003', '132834009', '132836006', '132837002', '132838007', '132840002', '132841003', '132842005', '132847004', '132848009', '132862002', '359839008', '406723001', '47290002', '20657003', '2034000', '2253004', '2333000', '3872000', '5114005', '5350006', '7598004', '7700003', '7767003', '10643004', '11830008', '12419001', '12874007', '13156006', '18299006', '23992007', '24886005', '25854005', '28138009', '29546006', '29615001', '30432005', '32509001', '32540008', '33224000', '33607002', '35839008', '37812004', '39571003', '41290008', '41437006', '42602001', '42840001', '43223009', '43869002', '46830002', '47314009', '47745005', '48255007', '49407004', '50710008', '52882006', '54218009', '54251000', '54604007', '55074002', '56764001', '57364006', '57950004', '87530001', '87833007', '132003006', '132826003', '132850001', '409910000', '30221007', '60786005', '61204004', '61839006', '61843005', '62124009', '63257005', '65136005', '65873005', '67021006', '67209003', '68412000', '69575001', '70210006', '70308007', '70326005', '70429002', '71238008', '73012007', '76268003', '77839002', '78154009', '78375007', '80204002', '80610007', '80886008', '80993008', '82249009', '82848009', '91401000', '91427000', '112495005', '131857000', '131858005', '131859002', '131860007', '131995009', '131996005', '131997001', '131998006', '131999003', '132000009', '132001008', '132002001', '132006003', '132725007', '132835005', '132839004', '409909005', '132247006', '132248001', '132249009', '132250009', '132251008', '132252001', '132253006', '132254000', '132255004', '132256003', '132257007', '132258002', '132259005', '132260000', '132262008', '132263003', '132264009', '132265005', '132266006', '132267002', '132268007', '132269004', '132270003', '132271004', '132272006', '132273001', '132274007', '132275008', '132276009', '78678003', '132180009', '132181008', '132182001', '132183006', '132184000', '132185004', '132186003', '132187007', '132188002', '132189005', '132190001', '132191002', '132192009', '132193004', '132194005', '132195006', '132196007', '132197003', '132198008', '132199000', '132200002', '132201003', '132202005', '132203000', '132204006', '132205007', '132206008', '132207004', '132208009', '132209001', '132210006', '132211005', '132212003', '132213008', '132214002', '132215001', '132216000', '132217009', '132218004', '132219007', '132220001', '132221002', '132222009', '132223004', '132224005', '132225006', '132226007', '132227003', '132228008', '132229000', '132230005', '132231009', '132232002', '132233007', '132234001', '132235000', '132236004', '132237008', '132238003', '132239006', '132240008', '132241007', '132242000', '132243005', '132244004', '132245003', '132246002', '132261001', '132277000', '132278005', '132279002', '132280004', '132281000', '132282007', '132283002', '132284008', '132285009', '132286005', '132287001', '132288006', '132289003', '132290007', '132291006', '132292004', '132293009', '132294003', '132295002', '132296001', '132297005', '132298000', '132299008', '132300000', '132301001', '132302008', '132303003', '132304009', '132305005', '132306006', '132307002', '132308007', '132309004', '132310009', '132311008', '132312001', '133167003', '133168008', '133169000', '133170004', '133171000', '133172007', '133173002', '133174008', '133175009', '133176005', '133177001', '133178006', '133179003', '133180000', '133181001', '133182008', '133183003', '133184009', '133185005', '133186006', '133187002', '133188007', '133189004', '133190008', '133191007', '133192000', '133193005', '133194004', '133195003', '133196002', '133197006', '133198001', '133199009', '133200007', '133218005', '133219002', '133220008', '133221007', '132021009', '132022002', '132023007', '132024001', '132025000', '132026004', '132027008', '132028003', '132029006', '132030001', '132031002', '132032009', '132033004', '132034005', '132035006', '132037003', '132038008', '132039000', '132040003', '132041004', '132043001', '132044007', '132045008', '132046009', '132047000', '132048005', '132059001', '132060006', '132061005', '132062003', '132063008', '132064002', '132065001', '132066000', '132067009', '132068004', '132069007', '132070008', '132071007', '132179006', '132313006', '132314000', '132315004', '132316003', '132317007', '132318002', '132319005', '132320004', '132321000', '132322007', '132323002', '132324008', '132325009', '132326005', '132327001', '132328006', '132329003', '132330008', '132331007', '132332000', '132333005', '132334004', '132335003', '132336002', '132337006', '132338001', '132339009', '132340006', '132341005', '132342003', '132343008', '132344002', '132345001', '132346000', '132347009', '132348004', '132349007', '132350007', '132351006', '132352004', '132353009', '132354003', '132355002', '132356001', '132357005', '132358000', '132359008', '132360003', '132361004', '132362006', '132363001', '132364007', '132365008', '132366009', '132367000', '132368005', '132768008', '132769000', '132843000', '132844006', '133161002', '133162009', '133163004', '133164005', '133165006', '133166007', '133201006', '133202004', '133203009', '133204003', '133205002', '133206001', '133207005', '133208000', '133209008', '133210003', '133211004', '133212006', '133213001', '133214007', '133215008', '133216009', '133217000', '133222000', '133223005', '133224004', '133225003', '133226002', '133227006', '133228001', '133229009', '133230004', '406663005', '417012009', '3260001', '5227002', '9135003', '15443006', '15961007', '19770007', '20044005', '20280002', '21021000', '22506004', '29881002', '30448006', '30634003', '36187006', '49240006', '54232006', '69461005', '73648005', '74568001', '77236002', '79814001', '80084005', '80979001', '82909008', '85315007', '86694007', '90885005', '132009005', '132010000', '132011001', '132012008', '132013003', '132014009', '132015005', '132016006', '132017002', '132018007', '132019004', '132020005', '132042006', '132049002', '132050002', '132051003', '132052005', '132053000', '132054006', '132055007', '132056008', '132057004', '132058009', '132072000', '132073005', '132125002', '132126001', '132127005', '132128000', '132129008', '132130003', '132131004', '132132006', '132133001', '132134007', '132135008', '132136009', '132137000', '132138005', '132139002', '132140000', '132141001', '132142008', '132143003', '132144009', '132145005', '132146006', '132147002', '132148007', '132149004', '132150004', '132151000', '132152007', '132153002', '132154008', '132155009', '132156005', '132157001', '132158006', '132159003', '132160008', '132161007', '132162000', '132163005', '132164004', '132165003', '132166002', '132167006', '132168001', '132170005', '132171009', '132173007', '132174001', '132175000', '132176004', '74921000', '80131009', '89928000', '75709004', '74899005', '112489009', '69602006', '61083001', '6053007', '8516002', '8763002', '8970009', '10261003', '11161001', '12407009', '14063001', '17717005', '18212001', '24111007', '24319000', '25856007', '29223008', '29235007', '30720007', '32297006', '32683006', '33212007', '33551003', '34595003', '36111002', '36570001', '41561001', '42948007', '43500007', '45635003', '47795006', '48470006', '49462008', '53431006', '56084008', '57613003', '61973002', '67720004', '68512002', '71923001', '73005003', '73944009', '74970001', '76364003', '78994007', '84081007', '84232003', '84315000', '84528008', '86440008', '87061000', '132074004', '132075003', '132076002', '132077006', '132078001', '132079009', '132080007', '132081006', '132082004', '132083009', '132084003', '132085002', '132086001', '132087005', '132088000', '132089008', '132090004', '132091000', '132092007', '132093002', '132094008', '132095009', '132096005', '132097001', '132098006', '132099003', '132100006', '132101005', '132102003', '132103008', '132104002', '132105001', '132106000', '132107009', '132108004', '132109007', '132110002', '132111003', '132112005', '132113000', '132114006', '132115007', '132116008', '132117004', '132118009', '132119001', '132120007', '132121006', '132122004', '132123009', '132124003', '132169009', '132178003', '58311005', '59667000', '61036003', '112490000', '34618005', '133259004', '409905004', '78541007', '53031002', '62153005', '65344003', '66314009', '66911005', '67448000', '76497003', '81267004', '80835003', '400003', '944009', '3216001', '6112002', '8989009', '13544004', '21553004', '21921002', '23629009', '26105007', '26525003', '28483003', '28744004', '35229007', '44230005', '45284002', '48702000', '50959000', '51937006', '83173002', '84839000', '88807001', '90612002', '112485003', '84923006', '30384003', '32938007', '132771000', '133594007', '133595008', '133596009', '133597000', '133598005', '133599002', '133600004', '133601000', '133602007', '133603002', '133604008', '133605009', '133606005', '133607001', '133608006', '133609003', '133610008', '133611007', '133612000', '133631006', '133632004', '133633009', '133634003', '133635002', '133636001', '133637005', '133638000', '133639008', '133640005', '133641009', '133642002', '133643007', '133644001', '133645000', '133646004', '133647008', '133648003', '133649006', '133650006', '133651005', '133653008', '133654002', '133655001', '133656000', '133657009', '133658004', '133659007', '133660002', '133661003', '133663000', '133664006', '133665007', '133666008', '133667004', '133668009', '133669001', '133670000', '133674009', '133675005', '133676006', '133677002', '133678007', '133679004', '133680001', '133681002', '133682009', '133686007', '133689000', '133690009', '133691008', '133699005', '133701005', '76604009', '133613005', '133614004', '133615003', '133616002', '133617006', '133618001', '133619009', '133620003', '133621004', '133622006', '133623001', '133624007', '133625008', '133626009', '133627000', '133628005', '133629002', '133630007', '133652003', '133662005', '133671001', '133672008', '133683004', '133684005', '133685006', '133687003', '133688008', '133692001', '133693006', '133694000', '133695004', '133696003', '133697007', '133698002', '133700006', '133705001', '133706000', '133707009', '133708004', '133709007', '133710002', '133711003', '133712005', '133713000', '133714006', '133721006', '133722004', '133723009', '133724003', '133725002', '133727005', '133728000', '133729008', '133730003', '133737000', '133738005', '133739002', '133740000', '133741001', '133742008', '133743003', '133744009', '133745005', '133746006', '133753002', '133754008', '133755009', '133756005', '133757001', '133758006', '133759003', '133760008', '133761007', '133762000', '133769009', '133770005', '133771009', '133772002', '133773007', '133774001', '133775000', '133776004', '133777008', '133778003', '133785004', '133786003', '133787007', '133788002', '133789005', '133790001', '133791002', '133792009', '133793004', '133794005', '440034003', '125102002', '70881005', '125104001', '131828004', '131846005', '425181009', '83996001', '74517004', '60958006', '24840008', '48394005', '85626006', '445729005', '407402001', '441714000']}, 'type'=>'CodeableConcept', 'path'=>'Animal.breed', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/animal-breeds'}},
        'genderStatus' => {'valid_codes'=>{'http://hl7.org/fhir/animal-genderstatus'=>['neutered', 'intact', 'unknown', 'neutered', 'intact', 'unknown']}, 'type'=>'CodeableConcept', 'path'=>'Animal.genderStatus', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/animal-genderstatus'}}
      }
    end

    class Communication < FHIR::Model
      METADATA = {
        'id' => {'type'=>'string', 'path'=>'Communication.id', 'min'=>0, 'max'=>1},
        'extension' => {'type'=>'Extension', 'path'=>'Communication.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'type'=>'Extension', 'path'=>'Communication.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
        'language' => {'valid_codes'=>{'urn:ietf:bcp:47'=>['bn', 'cs', 'da', 'de', 'de-AT', 'de-CH', 'de-DE', 'el', 'en', 'en-AU', 'en-CA', 'en-GB', 'en-IN', 'en-NZ', 'en-SG', 'en-US', 'es', 'es-AR', 'es-ES', 'es-UY', 'fi', 'fr', 'fr-BE', 'fr-CH', 'fr-FR', 'fy', 'fy-NL', 'hr', 'it', 'it-CH', 'it-IT', 'ja', 'ko', 'nl', 'nl-BE', 'nl-NL', 'no', 'no-NO', 'pt', 'pt-BR', 'ru', 'ru-RU', 'sr', 'sr-SP', 'sv', 'sv-SE', 'te', 'zh', 'zh-CN', 'zh-HK', 'zh-SG', 'zh-TW']}, 'type'=>'CodeableConcept', 'path'=>'Communication.language', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/languages'}},
        'preferred' => {'type'=>'boolean', 'path'=>'Communication.preferred', 'min'=>0, 'max'=>1}
      }
    end

    class Link < FHIR::Model
      METADATA = {
        'id' => {'type'=>'string', 'path'=>'Link.id', 'min'=>0, 'max'=>1},
        'extension' => {'type'=>'Extension', 'path'=>'Link.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'type'=>'Extension', 'path'=>'Link.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
        'other' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Patient', 'http://hl7.org/fhir/StructureDefinition/RelatedPerson'], 'type'=>'Reference', 'path'=>'Link.other', 'min'=>1, 'max'=>1},
        'type' => {'valid_codes'=>{'http://hl7.org/fhir/link-type'=>['replace', 'refer', 'seealso', 'replace', 'refer', 'seealso']}, 'type'=>'code', 'path'=>'Link.type', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/link-type'}}
      }
    end
  end
end
