
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
      'Firelands Regional Medical Center',
      '1111 Hayes Ave
Sandusky, OH 44870',
      'Sandusky',
      'OH',
      'ATTN: Materials',
      'Yes',
      '41.4459948',
      '-82.7101312'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Firelands Regional Medical Center'
        AND o.latitude = '41.4459948'
        AND o.longitude = '-82.7101312'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Firelands Regional Medical Center'
        AND o.latitude = '41.4459948'
        AND o.longitude = '-82.7101312'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Firelands Regional Medical Center'
        AND o.latitude = '41.4459948'
        AND o.longitude = '-82.7101312'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Firelands Regional Medical Center'
        AND o.latitude = '41.4459948'
        AND o.longitude = '-82.7101312'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Firelands Regional Medical Center'
        AND o.latitude = '41.4459948'
        AND o.longitude = '-82.7101312'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Firelands Regional Medical Center'
        AND o.latitude = '41.4459948'
        AND o.longitude = '-82.7101312'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Firelands Regional Medical Center'
        AND o.latitude = '41.4459948'
        AND o.longitude = '-82.7101312'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Firelands Regional Medical Center'
        AND o.latitude = '41.4459948'
        AND o.longitude = '-82.7101312'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Firelands Regional Medical Center'
        AND o.latitude = '41.4459948'
        AND o.longitude = '-82.7101312'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Firelands Regional Medical Center'
        AND o.latitude = '41.4459948'
        AND o.longitude = '-82.7101312'));

COMMIT;
