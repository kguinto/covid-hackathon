
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
      'Sholom Home East, Shirley Chapman',
      '740 Kay Ave
St Paul, MN 55102',
      'St. Paul',
      'MN',
      'Drop off at front desk/guest service, or mail ATTN: Karissa Pope, DON',
      'Yes',
      '44.919321',
      '-93.138366'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sholom Home East, Shirley Chapman'
        AND o.latitude = '44.919321'
        AND o.longitude = '-93.138366'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sholom Home East, Shirley Chapman'
        AND o.latitude = '44.919321'
        AND o.longitude = '-93.138366'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sholom Home East, Shirley Chapman'
        AND o.latitude = '44.919321'
        AND o.longitude = '-93.138366'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sholom Home East, Shirley Chapman'
        AND o.latitude = '44.919321'
        AND o.longitude = '-93.138366'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sholom Home East, Shirley Chapman'
        AND o.latitude = '44.919321'
        AND o.longitude = '-93.138366'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sholom Home East, Shirley Chapman'
        AND o.latitude = '44.919321'
        AND o.longitude = '-93.138366'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sholom Home East, Shirley Chapman'
        AND o.latitude = '44.919321'
        AND o.longitude = '-93.138366'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sholom Home East, Shirley Chapman'
        AND o.latitude = '44.919321'
        AND o.longitude = '-93.138366'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sholom Home East, Shirley Chapman'
        AND o.latitude = '44.919321'
        AND o.longitude = '-93.138366'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sholom Home East, Shirley Chapman'
        AND o.latitude = '44.919321'
        AND o.longitude = '-93.138366'));

COMMIT;
