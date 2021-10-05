import 'dart:math';

import 'package:gumtree_motors/feature/home/domain/listing.dart';

class ListingRepository {
  static List<Listing> getListings({int? size}) {
    if (size == null || size > _listings.length) {
      return _listings;
    } else {
      Random rng = Random();
      Set<Listing> listingsSet = {};
      for (int i = 0; i < size; i++) {
        bool addSuccess = false;
        while (!addSuccess) {
          addSuccess =
              listingsSet.add(_listings[rng.nextInt(_listings.length)]);
        }
      }
      return listingsSet.toList(growable: false);
    }
  }

  static const List<Listing> _listings = [
    Listing([
      'https://m.media-amazon.com/images/I/419HeJ3DM-L._AC_SL1000_.jpg',
    ],
        '2011 Ford Fiesta 1.25 Edge 3dr [82] HATCHBACK Petrol Manual',
        '£3,295',
        'Martlesham Heath',
        'Gumtree user',
        'PAS, Rear wiper, Windscreen heating, Audio remote control, Radio/CD, Body coloured bumpers, Electric door mirrors, Full size spare wheel, Air conditioning, Folding rear seats, Front electric windows, Front head restraints, Height adjustable drivers seat, Rear headrests, Steering wheel rake adjustment, Steering wheel reach adjustment, 3x3 point rear seat belts, ABS, Drivers airbag, Passenger airbag, Immobiliser, Remote central locking, Cloth seat trim, Alloy wheels, Cat N \nCentral Locking; Anti-Lock Brakes (ABS); Immobiliser; Passenger Airbag; CD Player; Electric Windows; Air Conditioning; Driver Airbag; AM/FM Stereo; Power-assisted Steering (PAS); Alloy Wheels; Safety Belt Pretensioners\nAbout Us:\nWelcome to JPS Car Sales, a long established family operated local car sales business in Ipswich. With over 40 years experience in the motor trade we look forward to helping you choose your next car. Customer satisfaction & after sales service are our number one priorities. Please get in touch if you need any further information about any of our vehicles.\nWhy buy from us?\n* Customer service and after sales care are our number one priorities\n* We have over 40 years experience in the motor trade\n* All our sales vehicles are maintained and serviced in house'),
    Listing([
      'https://m.media-amazon.com/images/I/61cmGpVWFNL._AC_SL1500_.jpg',
    ], '2007 Ford Fiesta', '£1,298', 'Shirehampton', 'Gumtree user',
        '2007/57 FORD FIESTA 1.4 TDCI DIESEL FACE LIFT MODEL 5 DOOR HATCH MOT JULY 2022THIS CAR COMES WITH REMOTE CENTRAL LOCKING ELECTRIC WINDOWS ELECTRIC MIRRORS AIR CONDITIONING CD PLAYER 2 OWNER FROM NEW 60 MPG FINISHED IN METALLIC BLACK THIS IS A SUPERB CAR INSIDE AND OUT NOT TO BE MISSED FIRST TO SEE WILL BUY SO FOR MORE DETAILS PLEASE PHONE ME ON [Phone number removed]THANKS FOR LOOKING'),
    Listing([
      'https://m.media-amazon.com/images/I/61DWfLU1iKL._AC_SL1200_.jpg',
    ],
        '2016 Ford Fiesta TITANIUM Hatchback Petrol Manual',
        '£8,699.00',
        'Beckenham, London',
        'Gumtree user',
        'A STUNNING LOOKING EXAMPLE NISSAN NOTE 1.4L, SERVICE HISTORY STAMPS x3, OLD INVOICES, 2 FORMER KEEPERS, CURRENT MOT NO ADVISORY, RADIO/CD, ELECTRIC WINDOWS (FRONT).THIS VEHICLE COMES WITH A 3 MONTH EXTENDED WARRANTY COVERING ALL MECHANICAL AND ELECTRICAL PARTS. THIS NATION WIDE COVER INCLUDES PARTS AND LABOUR. Eye Green Cars is a reputable, family owned business with many years of experience in bringing the very best in used, premium cars. We will venture to find any vehicle to suit your budget and requirements. Our helpful staff is at hand to deliver first class customer service and make the purchase of your used car simple. We pride ourselves on our customer care and offer an exceptional personal service. Prior to sale, our qualified team will fully inspect vehicles to make sure they are road worthy. All vehicles are HPI/Finance clear. For peace of mind, 3-24 month warranties are available covering all electrical/mechanical issues and include a national repair network, parts, labour and VAT. MOT renewal can be discussed at time of sale. We are open to discussing part-exchange on our vehicles. Prices on the forecourt will be considered when agreeing a part-exchange valuation. Prices vary from online and forecourt. Finance is available through a range of countrywide brokers who provide you with competitive, affordable rates. Nationwide delivery can be requested at a cost of 2.00 per mile. We accept all major debit/credit cards. Please feel free to view our extensive range of vehicles on our website and call/email us to book an appointment and arrange a test drive. The address is Eye Green Industrial Estate, 1 Crowland Road, Peterborough, PE6 7TN and the website is [Website URL removed] Front Electric Windows, Manual Air Conditioning with Pollen Filter, Single CD Radio, MP3 Auxiliary Input. White Service history 5 seats.'),
    Listing([
      'https://m.media-amazon.com/images/I/914BLoZdiWL._AC_SL1500_.jpg',
    ],
        '2003 Volkswagen Bora 1.6 SE 4dr Saloon Petrol Automatic',
        '£1,973.00',
        'Birmingham',
        'Example UserName',
        'LOVELY CLEAN CAR THROUGHOUT,A FULL 12 MONTHS MOT WILL BE PROVIDED,ALL HPI CHECKED AND CLEAR,COMES WITH 6 SERVICE STAMPS,THIS IS THE Kuga 2.0 TDCi Zetec Powershift 4x4 5dr MODEL,GREAT SPEC,FINISHED IN METALIC SILVER,LOOKS STUNNING,LOVELY DRIVE,WE OFFER FINANCE AND EXTENDED WARRANTY,PART EXCHANGE WELCOME,WE STRONGLY RECOMMEND AN EARLY VIEWING Air-Conditioning, Alarm, Alloy Wheels (17in), Cruise Control, DAB Radio, Electric Windows (Front/Rear), Heated Front Screen, Hill Holder, In Car Entertainment (Radio/CD/MP3), Telephone Equipment (Bluetooth Interface), Voice Activated Controls. Silver Service history 5 seats. VISIT OUR WEBSITE. [Website URL removed] . WE HAVE 5 STAR REVIEWS ON AUTOTRADER'),
    Listing(
        [
          'https://m.media-amazon.com/images/I/81PtmAb1+IL._AC_SL1500_.jpg',
        ],
        '2015 Vauxhall Mokka 1.6 i SE (s/s) 5dr Hatchback Petrol Manual',
        '£9,666.00',
        'Bournemouth',
        'Gumtree user',
        '[Phone number removed]Features Include: Cruise Control, Exterior temperature gauge, Maxidot, Power Steering, Service interval indicator, 8 speakers, Auxiliary socket for external MP3 player, Dance 2 DIN radio with CD + MP3, Aspherical driver\'s exterior mirror, Auto dimming interior mirror, Black side protection mouldings, Body colour bumpers, Body colour door handles, Body colour door mirrors, Chrome grille surround, Electric Front Windows, Electrically adjustable and heated door mirrors, Height adjustable headlamps, Intermittent rear wash/wipe, Tinted rear windows, Tinted windscreen, 1.5L bottle holder in front door panels, 12V power point in luggage area, 2 height adjustable rear headrests, 60/40 split folding rear seat, Air conditioned glovebox, Cargo area storage tray, Climatronic air conditioning, Driver + passenger vanity mirrors, Floor mats, Front armrest, Height adjustable front headrests, Height adjustable front seats, Height/reach adjust steering wheel, Interior light with delay, Internal chrome door handles, Leather gearknob and gaiter, Leather handbrake, Lower glovebox cover, Luggage load hooks, Parcel shelf, Pollen filter, Rear storage trays, Rear top tether child seat ISOFIX attachment, Sunglasses storage, Ticket holder, 3x3 point rear seatbelts, ABS, Curtain Airbags, Driver and passenger airbags, Driver and passenger side airbags, Driver\'s seatbelt undone warning light, ESC with ASR, Hill hold control, Motor Slip Regulation (MSR) - Engine Drag Torque Control, Passenger airbag deactivate switch, Alarm with tilt sensor, Immobiliser, Remote Central Locking, Chrome air vent surrounds, 16'
            ' Alloys'),
    Listing([
      'https://images2.drct2u.com/pdp_main_tablet_x2/products/xl/xl882/n16xl882500c.jpg',
    ], 'Audi A6 Full service', '£3,450.00', 'Wimbledon, London', 'Gumtree user',
        'MAIN AGENT SUPPLIED VAUXHALL TIGRA 1.4 I 16V EXCLUSIV CONVERTABLE 2008 2 DR IN LOVELY ELECTRIC BLUE METALLIC RECENT MOT FULL ELECTRIC PACK ALLOYS STEREO PLEASE LOOK AT ALL THE PICTURES WE DO HAVE A LARGE SELECTION OF CARS AND SOME VANS CALL ME TO ARRANGE A VIEWING ON [Phone number removed]ANYTIME Air Conditioning, 17in Five-Spoke Alloy Wheels, Alloy Wheels - 17in Five Spoke Bi-Colour, CD 30 MP3 - Stereo Radio/CD Player with MP3 Format and Auxiliary-In Socket, Electric Front Windows, Remote Control Ultrasonic Security Alarm System, Upholstery Leather. Blue Service history 2 seats. Contact free viewings Southsea / Winchester click and collect / delivery nationwide'),
    Listing([
      'https://whitecompany.scene7.com/is/image/whitecompany/Ride-On-Car-Toy/RIUBA_22_MAIN'
    ],
        '2018 Suzuki Swift SZ3 DUALJET Hatchback Petrol Manual',
        '£8,999.00',
        'Westminster, London',
        'Gumtree user',
        '**If you’re reading this then it’s still for sale, please no messages asking if it’s still available, thanks**\nFor sale my Merc\nIt\'s a 2.2 turbo diesel and starts first time and drives very well\nThe body work is good for its age\nIt\'s done a well looked after 160k miles and has MOT until 30th July 2022\nJust had a new clutch and flywheel, and a new DPF and sensors.\nNo silly offers I will just ignore them thanks'),
    Listing(
        ['https://m.media-amazon.com/images/I/71I4OgR0eML._AC_SL1500_.jpg'],
        'Audi TT - MOT March 2022 - Full Service History',
        '£1,795.00',
        'Manchester',
        'Gumtree user',
        'Established over 20 years as a low mileage specialist, No admin fees or hidden charges. RAC extended warranty available with road side assistance cover included. Low rate finance available with flexible terms. Please take a look at our excellent customer reviews. New MOT on purchase. Full Hyundai main dealership service history-Please see below for detailed history. | Features : V5 Reg Doc : ULEZ Compliant : Traction Control : Split Folding Rear Seats : Spare Key : Radio : Power Assisted Steering : Passenger Airbag : New MOT Upon Sale : Isofix System : Immobiliser : Full Main Dealer SH : Electric Windows : Driver Airbag : Central Locking : CD Player : Catalytic Converter : AUX Port : Adjustable Steering Wheel : ABS\nCentral Locking; Anti-Lock Brakes (ABS); Immobiliser; Passenger Airbag; CD Player; Electric Windows; AM/FM Stereo; Driver Airbag; Power-assisted Steering (PAS); Safety Belt Pretensioners; Catalytic Converter'),
    Listing([
      'https://m.media-amazon.com/images/I/71eHIz+a+KL._AC_SL1500_.jpg',
    ], 'Hyundai i20 premium 2018', '£7,895.00', 'Newcastle', 'Gumtree user',
        'This vehicle has just arrived into stock and is waiting to be prepared. Lancers of Beckenham has been established for over 21 years as a family run, low mileage , low owner specialist. We offer low rate finance with low deposits, subject to status. An RAC Platinum warranty is available for up to 36 months, with 12 months road side assistance. Please view our excellent customer reviews. | Features : V5 Reg Doc : USB Connection : ULEZ Compliant : Start Stop : Split Folding Rear Seats : Spare Key : Seat Height Adjustment : Remote Locking : Rear Parking Sensors : Radio : Power Assisted Steering : MOT : Isofix System : Immobiliser : HPI Clear : Full Service History : Front : Side : Rear Airbags : Front Arm Rest : Folding Rear Seats : Electric Windows : Electric Mirrors : Elec Folding Mirrors : Driver Airbag : DAB Radio : Cruise Control : Central Locking : AUX Port : Alloy Wheels : Air Conditioning : ABS\nCentral Locking; Immobiliser; Full Service History; Air Conditioning; Parking Sensors; Safety Belt Pretensioners; Anti-Lock Brakes (ABS); Electric Windows; Driver Airbag; Cruise Control; AM/FM Stereo; Power-assisted Steering (PAS); Alloy Wheels'),
    Listing(
      [
        'https://www.amara.com/static/uploads/images-2/products/x/huge/1694174/racing-car-black-440695.jpg'
      ],
      '2013 Vauxhall Insignia 2.0 CDTi 16v SRi 5dr Estate Diesel Manual',
      '£4,691.00',
      'Bromham, Bedfordshire',
      'Gumtree user',
      '12 MONTHS MOT+3 MONTHS WARRANTY+SERVICED BEFORE SALE. A lovely example throughout with very good paintwork an extremely clean interior and drives perfectly. Extended warranty and finance available. Please see website for more information. VIEWING BY APPOINTMENT PLEASE. A family run business operating for over 30 years from the same premises. Buy with confidence 17in 7-Spoke Alloy Wheels with Locking Wheel Nuts, CD 400 - CD/MP3 CD Player/Stereo Radio with Aux-In Socket and Graphic Display, Cruise Control, Driver Information Centre, Electrically Operated Front Windows with One-Touch Facility, Hill Start Assist (HSA), Remote Control Security Alarm System, Single-Zone Electronic Climate Control (ECC) Incorporating Air Conditioning, Tinted Glass and Dark Tinted Solar Protect Glass (Excludes Windscreen and Front Door Windows), Drivers Seat with Electrical Four-Way Lumbar Adjustment, Multi-Function Trip Computer, Anti-lock Braking System (ABS) with Emergency Brake Assist (EBA), Remote Control Central Locking, ISOFIX Child Seat Restraint System for All Rear Seats Incorporating Top Tether, Twin Electrically Adjustable/Heated Door Mirrors with Automatic Timed Cut-Off, Two Coat Metallic Paint. Black Service history 5 seats.',
    ),
    Listing(
      ['https://m.media-amazon.com/images/I/711oCjIF88L._AC_SL1500_.jpg'],
      '2020 Toyota Noah NEW SHAPE HER E ONLY 63000 MILES Auto MPV Petrol Automatic',
      '£6,995.00',
      'Hove, East Sussex',
      'Gumtree user',
      'SUPER CAR NEW SHAPE NOAH PEARLESCENT WHITE, POWER DOOR, 12 MONTH WARRANTY, UNDER SEALED UK SAT NAV SPEEDO MPG GRADE 4 B INSIDE BITM CERTIFICATE NEVER SMOKED IN BEAUTY Features Include:\nNavigation System; Safety Belt Pretensioners',
    ),
    Listing(
      ['https://m.media-amazon.com/images/I/71HxbHJvJDL._AC_SL1500_.jpg'],
      '2021 Toyota Yaris 1.6T GR Circuit AWD 3dr Hatchback Petrol Manual',
      '£37,495.00',
      'Tile Cross, West Midlands',
      'Gumtree user',
      '18in Alloy Wheels - BBS Forged 10-Spoke, 3-Spoke Leather Sports Steering Wheel, Active Noise Control, Adaptive Automatic High Beam, Adaptive LED Headlights, Auto Headlights, Auto Up and Down Function on Drivers Window, Automatic Headlight Cut-Off, Automatically Retractable Door Mirrors, Black Bi-Tone Roof, Bluetooth Connectivity, Circuit-tuned GR Suspension, DAB Digital Radio, Dual Exhaust Pipes, Dual-Zone Automatic Air Conditioning, Electrochromatic Auto-Dimming Rear View Mirror, Front Fog Lights - LED, GR Leather Steering Wheel, GR Sport Suspension, Intelligent Adaptive Cruise Control, Lane Departure Alert, Lane Trace Assist, Manual Slide Adjustment on Driver and Passenger Seats, Microphone on Front Personal Light, Power and Remote Door Locking, Push Button Start, Rain Sensing Wipers, Rear Fog Light, Rear Privacy Glass, Red Brake Callipers, Red Stitching on Handbrake, Reversing Camera, Satin Interior Accents, Seats - Sliding Front, Shark Fin Antenna, Smart Entry System, Smartphone Integration - Apple Car Play and Android Auto, Soft Touch Inner Door Garnish, Soft-Touch Instrument Panel, Suspension Tuning, TFT Colour Display, TPMS - Tyre Pressure Monitoring System, Toyota Safety Sense, Toyota Touch 2 Multimedia System with 7in Display, Two Torsen Limited Slip Differentials, USB Connection, VSC - Vehicle Stability Control. 5 seats. ,all major debit cards welcome,indoor viewing, finance available please call [Phone number removed]\nCentral Locking; Air Conditioning; AM/FM Stereo; Cruise Control; Tuning; Power-assisted Steering (PAS); Alloy Wheels; Safety Belt Pretensioners',
    )
  ];
}
