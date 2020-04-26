
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
      'Santa Clara Valley Medical Center',
      '2400 Clove Drive
San Jose, CA 95128',
      'San Jose',
      'CA',
      'Please call 408-885-5299 before delivery from 8 to 5.',
      'Please call to verify',
      '37.3120077',
      '-121.9368473'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Santa Clara Valley Medical Center'
        AND o.latitude = '37.3120077'
        AND o.longitude = '-121.9368473'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Santa Clara Valley Medical Center'
        AND o.latitude = '37.3120077'
        AND o.longitude = '-121.9368473'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Santa Clara Valley Medical Center'
        AND o.latitude = '37.3120077'
        AND o.longitude = '-121.9368473'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Santa Clara Valley Medical Center'
        AND o.latitude = '37.3120077'
        AND o.longitude = '-121.9368473'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Santa Clara Valley Medical Center'
        AND o.latitude = '37.3120077'
        AND o.longitude = '-121.9368473'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Santa Clara Valley Medical Center'
        AND o.latitude = '37.3120077'
        AND o.longitude = '-121.9368473'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Santa Clara Valley Medical Center'
        AND o.latitude = '37.3120077'
        AND o.longitude = '-121.9368473'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('wipes & infrared thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Santa Clara Valley Medical Center'
        AND o.latitude = '37.3120077'
        AND o.longitude = '-121.9368473'));

COMMIT;
