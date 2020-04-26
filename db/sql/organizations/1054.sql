
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
      'Wilson County Jail Medical Department',
      '800 10th St
Floresville, TX 78114',
      'Floresville ',
      'TX',
      'ATTN: Medical',
      'Yes',
      '29.147764',
      '-98.15763'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Wilson County Jail Medical Department'
        AND o.latitude = '29.147764'
        AND o.longitude = '-98.15763'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Wilson County Jail Medical Department'
        AND o.latitude = '29.147764'
        AND o.longitude = '-98.15763'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Wilson County Jail Medical Department'
        AND o.latitude = '29.147764'
        AND o.longitude = '-98.15763'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Wilson County Jail Medical Department'
        AND o.latitude = '29.147764'
        AND o.longitude = '-98.15763'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Wilson County Jail Medical Department'
        AND o.latitude = '29.147764'
        AND o.longitude = '-98.15763'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Wilson County Jail Medical Department'
        AND o.latitude = '29.147764'
        AND o.longitude = '-98.15763'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Wilson County Jail Medical Department'
        AND o.latitude = '29.147764'
        AND o.longitude = '-98.15763'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Wilson County Jail Medical Department'
        AND o.latitude = '29.147764'
        AND o.longitude = '-98.15763'));

COMMIT;
