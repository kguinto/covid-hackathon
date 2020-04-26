
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
      'The Neighborhood Doctor ',
      '106 N Main St
La Feria, TX 78559',
      'La Feria',
      'TX',
      'Please deliver to our lobby. Attention Bobby Sanchez ',
      'Yes',
      '26.1581202',
      '-97.8237187'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Neighborhood Doctor '
        AND o.latitude = '26.1581202'
        AND o.longitude = '-97.8237187'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Neighborhood Doctor '
        AND o.latitude = '26.1581202'
        AND o.longitude = '-97.8237187'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Neighborhood Doctor '
        AND o.latitude = '26.1581202'
        AND o.longitude = '-97.8237187'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Neighborhood Doctor '
        AND o.latitude = '26.1581202'
        AND o.longitude = '-97.8237187'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Neighborhood Doctor '
        AND o.latitude = '26.1581202'
        AND o.longitude = '-97.8237187'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Neighborhood Doctor '
        AND o.latitude = '26.1581202'
        AND o.longitude = '-97.8237187'));

COMMIT;
