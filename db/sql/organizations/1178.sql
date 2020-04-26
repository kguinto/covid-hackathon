
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
      'Nazareth Hospital',
      '2601 Holme Ave
Philadelphia, PA 19152',
      'Philadelphia',
      'PA',
      'Security desk

OR

Contact Gary Catts, Gary.catts@mercyhealth.org',
      'Open box as, but item should be bagged or secured uncompromised or used.  THANK YOU!',
      '40.0588411',
      '-75.0421637'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Nazareth Hospital'
        AND o.latitude = '40.0588411'
        AND o.longitude = '-75.0421637'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Nazareth Hospital'
        AND o.latitude = '40.0588411'
        AND o.longitude = '-75.0421637'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Nazareth Hospital'
        AND o.latitude = '40.0588411'
        AND o.longitude = '-75.0421637'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Nazareth Hospital'
        AND o.latitude = '40.0588411'
        AND o.longitude = '-75.0421637'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Nazareth Hospital'
        AND o.latitude = '40.0588411'
        AND o.longitude = '-75.0421637'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Nazareth Hospital'
        AND o.latitude = '40.0588411'
        AND o.longitude = '-75.0421637'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Nazareth Hospital'
        AND o.latitude = '40.0588411'
        AND o.longitude = '-75.0421637'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Nazareth Hospital'
        AND o.latitude = '40.0588411'
        AND o.longitude = '-75.0421637'));

COMMIT;
