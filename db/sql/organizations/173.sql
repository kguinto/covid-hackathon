
BEGIN;

INSERT INTO organizations
    (
      name,
      address,
      city,
      state,
      instructions,
      accepts_opened,
      latitude,
      longitude
    )
  VALUES
    (
      'King County Search and Rescue',
      'c/o Gregg''s Cycle
105 Bellevue Way NE
Bellevue, WA 98004',
      'Bellevue',
      'WA',
      'http://www.KingCountySAR.org, Gregg''s Cycle is helping us with a donation site. Call 425-462-1900 (press 0) and a staff member will meet you at the front door to collect the donation.  Daily except  Sunday and Wednesday from 10am – 6pm.',
      'Open box N95, ',
      '47.6115901',
      '-122.2017231'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'King County Search and Rescue'
        AND o.latitude = '47.6115901'
        AND o.longitude = '-122.2017231'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'King County Search and Rescue'
        AND o.latitude = '47.6115901'
        AND o.longitude = '-122.2017231'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'King County Search and Rescue'
        AND o.latitude = '47.6115901'
        AND o.longitude = '-122.2017231'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Nitrile Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'King County Search and Rescue'
        AND o.latitude = '47.6115901'
        AND o.longitude = '-122.2017231'));

COMMIT;
