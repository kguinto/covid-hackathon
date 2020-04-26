
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
      'Healthcare Partners Nevada',
      '700 E Warm Springs Rd # 302
Las Vegas, NV 89119',
      'Las Vegas',
      'NV',
      'Mail ATTN: COVID19 Task Force',
      'Yes',
      '36.0578468',
      '-115.147645'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Healthcare Partners Nevada'
        AND o.latitude = '36.0578468'
        AND o.longitude = '-115.147645'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Healthcare Partners Nevada'
        AND o.latitude = '36.0578468'
        AND o.longitude = '-115.147645'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Healthcare Partners Nevada'
        AND o.latitude = '36.0578468'
        AND o.longitude = '-115.147645'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Healthcare Partners Nevada'
        AND o.latitude = '36.0578468'
        AND o.longitude = '-115.147645'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Healthcare Partners Nevada'
        AND o.latitude = '36.0578468'
        AND o.longitude = '-115.147645'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Healthcare Partners Nevada'
        AND o.latitude = '36.0578468'
        AND o.longitude = '-115.147645'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Healthcare Partners Nevada'
        AND o.latitude = '36.0578468'
        AND o.longitude = '-115.147645'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Healthcare Partners Nevada'
        AND o.latitude = '36.0578468'
        AND o.longitude = '-115.147645'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Healthcare Partners Nevada'
        AND o.latitude = '36.0578468'
        AND o.longitude = '-115.147645'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Healthcare Partners Nevada'
        AND o.latitude = '36.0578468'
        AND o.longitude = '-115.147645'));

COMMIT;
