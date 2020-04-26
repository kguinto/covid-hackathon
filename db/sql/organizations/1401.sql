
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
      'Shadyside Medical Center',
      '3689 Saxonburg Blvd
Pittsburgh, PA 15238',
      'Pittsburgh ',
      'PA',
      'Drop off by the garage please.  ',
      'Yes',
      '40.57267',
      '-79.8934699'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Shadyside Medical Center'
        AND o.latitude = '40.57267'
        AND o.longitude = '-79.8934699'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Shadyside Medical Center'
        AND o.latitude = '40.57267'
        AND o.longitude = '-79.8934699'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Shadyside Medical Center'
        AND o.latitude = '40.57267'
        AND o.longitude = '-79.8934699'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Shadyside Medical Center'
        AND o.latitude = '40.57267'
        AND o.longitude = '-79.8934699'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Shadyside Medical Center'
        AND o.latitude = '40.57267'
        AND o.longitude = '-79.8934699'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Shadyside Medical Center'
        AND o.latitude = '40.57267'
        AND o.longitude = '-79.8934699'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Shadyside Medical Center'
        AND o.latitude = '40.57267'
        AND o.longitude = '-79.8934699'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Shadyside Medical Center'
        AND o.latitude = '40.57267'
        AND o.longitude = '-79.8934699'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Shadyside Medical Center'
        AND o.latitude = '40.57267'
        AND o.longitude = '-79.8934699'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Shadyside Medical Center'
        AND o.latitude = '40.57267'
        AND o.longitude = '-79.8934699'));

COMMIT;
