
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
      'St Catherine of Siena Medical Center',
      '50 Route 25A
Smithtown, NY 11787',
      'Smithtown',
      'NY',
      'Attn: Sarah Swenk Tele 2N',
      'Yes',
      '40.8679327',
      '-73.2231155'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'St Catherine of Siena Medical Center'
        AND o.latitude = '40.8679327'
        AND o.longitude = '-73.2231155'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'St Catherine of Siena Medical Center'
        AND o.latitude = '40.8679327'
        AND o.longitude = '-73.2231155'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'St Catherine of Siena Medical Center'
        AND o.latitude = '40.8679327'
        AND o.longitude = '-73.2231155'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'St Catherine of Siena Medical Center'
        AND o.latitude = '40.8679327'
        AND o.longitude = '-73.2231155'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'St Catherine of Siena Medical Center'
        AND o.latitude = '40.8679327'
        AND o.longitude = '-73.2231155'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'St Catherine of Siena Medical Center'
        AND o.latitude = '40.8679327'
        AND o.longitude = '-73.2231155'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'St Catherine of Siena Medical Center'
        AND o.latitude = '40.8679327'
        AND o.longitude = '-73.2231155'));

COMMIT;
