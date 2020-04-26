
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
      'Nebraska Medicine',
      '4230 Leavenworth St
Omaha, NE 68105',
      'Omaha',
      'NE',
      'Address is the business services center. Dropoff is on the NORTH side of the building from 7 am to 3 pm, Monday thru Friday. Access to this location is from 42nd Street only.',
      'No',
      '41.2530369',
      '-95.9771441'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Nebraska Medicine'
        AND o.latitude = '41.2530369'
        AND o.longitude = '-95.9771441'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Nebraska Medicine'
        AND o.latitude = '41.2530369'
        AND o.longitude = '-95.9771441'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Nebraska Medicine'
        AND o.latitude = '41.2530369'
        AND o.longitude = '-95.9771441'));

COMMIT;
