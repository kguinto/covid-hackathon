
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
      'Mercy Health - St. Vincent Medical Center',
      '2213 Cherry St
Toledo, OH 43608',
      'Toledo',
      'OH',
      '',
      '',
      '41.6686144',
      '-83.5429045'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mercy Health - St. Vincent Medical Center'
        AND o.latitude = '41.6686144'
        AND o.longitude = '-83.5429045'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mercy Health - St. Vincent Medical Center'
        AND o.latitude = '41.6686144'
        AND o.longitude = '-83.5429045'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mercy Health - St. Vincent Medical Center'
        AND o.latitude = '41.6686144'
        AND o.longitude = '-83.5429045'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mercy Health - St. Vincent Medical Center'
        AND o.latitude = '41.6686144'
        AND o.longitude = '-83.5429045'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mercy Health - St. Vincent Medical Center'
        AND o.latitude = '41.6686144'
        AND o.longitude = '-83.5429045'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mercy Health - St. Vincent Medical Center'
        AND o.latitude = '41.6686144'
        AND o.longitude = '-83.5429045'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mercy Health - St. Vincent Medical Center'
        AND o.latitude = '41.6686144'
        AND o.longitude = '-83.5429045'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mercy Health - St. Vincent Medical Center'
        AND o.latitude = '41.6686144'
        AND o.longitude = '-83.5429045'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mercy Health - St. Vincent Medical Center'
        AND o.latitude = '41.6686144'
        AND o.longitude = '-83.5429045'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mercy Health - St. Vincent Medical Center'
        AND o.latitude = '41.6686144'
        AND o.longitude = '-83.5429045'));

COMMIT;
