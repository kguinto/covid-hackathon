
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
      'Meadowood Health and Rehabilitation Center',
      '3110 Wagner Heights Rd
Stockton, CA 95209',
      'Stockton',
      'CA',
      'Drop off at address listed or mail',
      'Yes',
      '38.0314061',
      '-121.3564414'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Meadowood Health and Rehabilitation Center'
        AND o.latitude = '38.0314061'
        AND o.longitude = '-121.3564414'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Meadowood Health and Rehabilitation Center'
        AND o.latitude = '38.0314061'
        AND o.longitude = '-121.3564414'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Meadowood Health and Rehabilitation Center'
        AND o.latitude = '38.0314061'
        AND o.longitude = '-121.3564414'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Meadowood Health and Rehabilitation Center'
        AND o.latitude = '38.0314061'
        AND o.longitude = '-121.3564414'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Meadowood Health and Rehabilitation Center'
        AND o.latitude = '38.0314061'
        AND o.longitude = '-121.3564414'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Meadowood Health and Rehabilitation Center'
        AND o.latitude = '38.0314061'
        AND o.longitude = '-121.3564414'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Meadowood Health and Rehabilitation Center'
        AND o.latitude = '38.0314061'
        AND o.longitude = '-121.3564414'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Meadowood Health and Rehabilitation Center'
        AND o.latitude = '38.0314061'
        AND o.longitude = '-121.3564414'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Meadowood Health and Rehabilitation Center'
        AND o.latitude = '38.0314061'
        AND o.longitude = '-121.3564414'));

COMMIT;
