
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
      'Providence Tarzana Medical Center',
      '18321 Clark St
Tarzana, CA 91356',
      'Tarzana',
      'CA',
      'Curbside or mail donations accepted',
      'Yes',
      '2489',
      'undefined'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Providence Tarzana Medical Center'
        AND o.latitude = '2489'
        AND o.longitude = 'undefined'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Providence Tarzana Medical Center'
        AND o.latitude = '2489'
        AND o.longitude = 'undefined'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Providence Tarzana Medical Center'
        AND o.latitude = '2489'
        AND o.longitude = 'undefined'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Providence Tarzana Medical Center'
        AND o.latitude = '2489'
        AND o.longitude = 'undefined'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Providence Tarzana Medical Center'
        AND o.latitude = '2489'
        AND o.longitude = 'undefined'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Providence Tarzana Medical Center'
        AND o.latitude = '2489'
        AND o.longitude = 'undefined'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Providence Tarzana Medical Center'
        AND o.latitude = '2489'
        AND o.longitude = 'undefined'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Providence Tarzana Medical Center'
        AND o.latitude = '2489'
        AND o.longitude = 'undefined'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Providence Tarzana Medical Center'
        AND o.latitude = '2489'
        AND o.longitude = 'undefined'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Providence Tarzana Medical Center'
        AND o.latitude = '2489'
        AND o.longitude = 'undefined'));

COMMIT;
