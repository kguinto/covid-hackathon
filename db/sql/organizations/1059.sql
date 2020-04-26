
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
      'Kaiser Morse',
      '2025 Morse Ave
Sacramento, CA 95825',
      'Sacramento',
      'CA',
      'Mail Attn: Emergency Dept, 2025 Morse Ave, Sacramento, CA 95825',
      'Yes',
      '38.6015925',
      '-121.3931543'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Morse'
        AND o.latitude = '38.6015925'
        AND o.longitude = '-121.3931543'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Morse'
        AND o.latitude = '38.6015925'
        AND o.longitude = '-121.3931543'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Morse'
        AND o.latitude = '38.6015925'
        AND o.longitude = '-121.3931543'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Morse'
        AND o.latitude = '38.6015925'
        AND o.longitude = '-121.3931543'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Morse'
        AND o.latitude = '38.6015925'
        AND o.longitude = '-121.3931543'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Morse'
        AND o.latitude = '38.6015925'
        AND o.longitude = '-121.3931543'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Morse'
        AND o.latitude = '38.6015925'
        AND o.longitude = '-121.3931543'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Morse'
        AND o.latitude = '38.6015925'
        AND o.longitude = '-121.3931543'));

COMMIT;
