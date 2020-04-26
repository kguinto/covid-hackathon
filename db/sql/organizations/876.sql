
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
      'Adventist Health, Saint Helena',
      '10 Woodland Rd
St Helena, CA 94574',
      'Saint Helena',
      'CA',
      'Attn: Tim Lyons, MD',
      'Yes',
      '38.5425501',
      '-122.4748268'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Adventist Health, Saint Helena'
        AND o.latitude = '38.5425501'
        AND o.longitude = '-122.4748268'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Adventist Health, Saint Helena'
        AND o.latitude = '38.5425501'
        AND o.longitude = '-122.4748268'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Adventist Health, Saint Helena'
        AND o.latitude = '38.5425501'
        AND o.longitude = '-122.4748268'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Adventist Health, Saint Helena'
        AND o.latitude = '38.5425501'
        AND o.longitude = '-122.4748268'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Adventist Health, Saint Helena'
        AND o.latitude = '38.5425501'
        AND o.longitude = '-122.4748268'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Adventist Health, Saint Helena'
        AND o.latitude = '38.5425501'
        AND o.longitude = '-122.4748268'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Adventist Health, Saint Helena'
        AND o.latitude = '38.5425501'
        AND o.longitude = '-122.4748268'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Adventist Health, Saint Helena'
        AND o.latitude = '38.5425501'
        AND o.longitude = '-122.4748268'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Adventist Health, Saint Helena'
        AND o.latitude = '38.5425501'
        AND o.longitude = '-122.4748268'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Adventist Health, Saint Helena'
        AND o.latitude = '38.5425501'
        AND o.longitude = '-122.4748268'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Respirators',
    (SELECT id FROM organizations o
      WHERE o.name = 'Adventist Health, Saint Helena'
        AND o.latitude = '38.5425501'
        AND o.longitude = '-122.4748268'));

COMMIT;
