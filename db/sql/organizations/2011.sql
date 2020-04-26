
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
      'Rocky Mountain Detox',
      '1348 Pierce St
Lakewood, CO 80214',
      'Lakewood',
      'CO',
      'Mailing address',
      'Yes',
      '39.737637',
      '-105.0716255'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Rocky Mountain Detox'
        AND o.latitude = '39.737637'
        AND o.longitude = '-105.0716255'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Rocky Mountain Detox'
        AND o.latitude = '39.737637'
        AND o.longitude = '-105.0716255'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Rocky Mountain Detox'
        AND o.latitude = '39.737637'
        AND o.longitude = '-105.0716255'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Rocky Mountain Detox'
        AND o.latitude = '39.737637'
        AND o.longitude = '-105.0716255'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Rocky Mountain Detox'
        AND o.latitude = '39.737637'
        AND o.longitude = '-105.0716255'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Rocky Mountain Detox'
        AND o.latitude = '39.737637'
        AND o.longitude = '-105.0716255'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Rocky Mountain Detox'
        AND o.latitude = '39.737637'
        AND o.longitude = '-105.0716255'));

COMMIT;
