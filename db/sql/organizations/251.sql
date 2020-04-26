
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
      'UT Health East Texas Rehabilitation Clinic - Pittsburgh',
      '3612 Cromwell Street
Plano, TX 75075',
      'Plano',
      'TX',
      '',
      'Yes',
      '33.0227591',
      '-96.7616741'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'UT Health East Texas Rehabilitation Clinic - Pittsburgh'
        AND o.latitude = '33.0227591'
        AND o.longitude = '-96.7616741'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'UT Health East Texas Rehabilitation Clinic - Pittsburgh'
        AND o.latitude = '33.0227591'
        AND o.longitude = '-96.7616741'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'UT Health East Texas Rehabilitation Clinic - Pittsburgh'
        AND o.latitude = '33.0227591'
        AND o.longitude = '-96.7616741'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'UT Health East Texas Rehabilitation Clinic - Pittsburgh'
        AND o.latitude = '33.0227591'
        AND o.longitude = '-96.7616741'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'UT Health East Texas Rehabilitation Clinic - Pittsburgh'
        AND o.latitude = '33.0227591'
        AND o.longitude = '-96.7616741'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'UT Health East Texas Rehabilitation Clinic - Pittsburgh'
        AND o.latitude = '33.0227591'
        AND o.longitude = '-96.7616741'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'UT Health East Texas Rehabilitation Clinic - Pittsburgh'
        AND o.latitude = '33.0227591'
        AND o.longitude = '-96.7616741'));

COMMIT;
