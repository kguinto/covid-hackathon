
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
      'Willow Terrace Nursing and Rehabilitation',
      '1 Penn Blvd
Philadelphia, PA 19144',
      'Philadelphia',
      'PA',
      '',
      'Unsure',
      '40.0396539',
      '-75.1599192'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Willow Terrace Nursing and Rehabilitation'
        AND o.latitude = '40.0396539'
        AND o.longitude = '-75.1599192'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Willow Terrace Nursing and Rehabilitation'
        AND o.latitude = '40.0396539'
        AND o.longitude = '-75.1599192'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Willow Terrace Nursing and Rehabilitation'
        AND o.latitude = '40.0396539'
        AND o.longitude = '-75.1599192'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Willow Terrace Nursing and Rehabilitation'
        AND o.latitude = '40.0396539'
        AND o.longitude = '-75.1599192'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Willow Terrace Nursing and Rehabilitation'
        AND o.latitude = '40.0396539'
        AND o.longitude = '-75.1599192'));

COMMIT;
