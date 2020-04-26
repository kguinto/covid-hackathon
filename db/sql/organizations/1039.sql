
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
      'Impact Healthcare ',
      '1443 N 1200 W
Orem, UT 84057',
      'Orem',
      'UT',
      'ATTN: DONNA LINEBAUGH',
      'Yes',
      '40.32385',
      '-111.7252511'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Impact Healthcare '
        AND o.latitude = '40.32385'
        AND o.longitude = '-111.7252511'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Impact Healthcare '
        AND o.latitude = '40.32385'
        AND o.longitude = '-111.7252511'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Impact Healthcare '
        AND o.latitude = '40.32385'
        AND o.longitude = '-111.7252511'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Impact Healthcare '
        AND o.latitude = '40.32385'
        AND o.longitude = '-111.7252511'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Impact Healthcare '
        AND o.latitude = '40.32385'
        AND o.longitude = '-111.7252511'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Impact Healthcare '
        AND o.latitude = '40.32385'
        AND o.longitude = '-111.7252511'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Impact Healthcare '
        AND o.latitude = '40.32385'
        AND o.longitude = '-111.7252511'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Impact Healthcare '
        AND o.latitude = '40.32385'
        AND o.longitude = '-111.7252511'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Impact Healthcare '
        AND o.latitude = '40.32385'
        AND o.longitude = '-111.7252511'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Impact Healthcare '
        AND o.latitude = '40.32385'
        AND o.longitude = '-111.7252511'));

COMMIT;
