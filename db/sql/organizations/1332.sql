
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
      'River Oaks Treatment Center',
      '12012 Boyette Rd
Riverview, FL 33569',
      'Riverview',
      'FL',
      'Administration Office.  Shipping preferred',
      'Yes',
      '27.8553342',
      '-82.2967911'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'River Oaks Treatment Center'
        AND o.latitude = '27.8553342'
        AND o.longitude = '-82.2967911'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'River Oaks Treatment Center'
        AND o.latitude = '27.8553342'
        AND o.longitude = '-82.2967911'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'River Oaks Treatment Center'
        AND o.latitude = '27.8553342'
        AND o.longitude = '-82.2967911'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'River Oaks Treatment Center'
        AND o.latitude = '27.8553342'
        AND o.longitude = '-82.2967911'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'River Oaks Treatment Center'
        AND o.latitude = '27.8553342'
        AND o.longitude = '-82.2967911'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'River Oaks Treatment Center'
        AND o.latitude = '27.8553342'
        AND o.longitude = '-82.2967911'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'River Oaks Treatment Center'
        AND o.latitude = '27.8553342'
        AND o.longitude = '-82.2967911'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'River Oaks Treatment Center'
        AND o.latitude = '27.8553342'
        AND o.longitude = '-82.2967911'));

COMMIT;
