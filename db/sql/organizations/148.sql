
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
      'Olathe Medical Center',
      '20333 W 151st St
Olathe, KS 66061',
      'Olathe',
      'KS',
      'Olathe',
      'Yes',
      '38.852603',
      '-94.8229695'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Olathe Medical Center'
        AND o.latitude = '38.852603'
        AND o.longitude = '-94.8229695'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Olathe Medical Center'
        AND o.latitude = '38.852603'
        AND o.longitude = '-94.8229695'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Olathe Medical Center'
        AND o.latitude = '38.852603'
        AND o.longitude = '-94.8229695'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Olathe Medical Center'
        AND o.latitude = '38.852603'
        AND o.longitude = '-94.8229695'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Olathe Medical Center'
        AND o.latitude = '38.852603'
        AND o.longitude = '-94.8229695'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Olathe Medical Center'
        AND o.latitude = '38.852603'
        AND o.longitude = '-94.8229695'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Olathe Medical Center'
        AND o.latitude = '38.852603'
        AND o.longitude = '-94.8229695'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Olathe Medical Center'
        AND o.latitude = '38.852603'
        AND o.longitude = '-94.8229695'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Olathe Medical Center'
        AND o.latitude = '38.852603'
        AND o.longitude = '-94.8229695'));

COMMIT;
