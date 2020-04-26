
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
      'A Friend In Need Home Care',
      '1033 E Pineview St
Olathe, KS 66061',
      'OLATHE',
      'KS',
      'Donations can be left on porch steps. Call 913-289-8849. We are a small business and have  10 Caregivers/CNA that require PPE',
      'Yes',
      '38.9055973',
      '-94.7994846'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'A Friend In Need Home Care'
        AND o.latitude = '38.9055973'
        AND o.longitude = '-94.7994846'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'A Friend In Need Home Care'
        AND o.latitude = '38.9055973'
        AND o.longitude = '-94.7994846'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'A Friend In Need Home Care'
        AND o.latitude = '38.9055973'
        AND o.longitude = '-94.7994846'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'A Friend In Need Home Care'
        AND o.latitude = '38.9055973'
        AND o.longitude = '-94.7994846'));

COMMIT;
