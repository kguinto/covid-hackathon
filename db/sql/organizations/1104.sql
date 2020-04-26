
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
      'OnPointe Dallas',
      '8200 Walnut Hill Lane Main 5
Dallas, TX 75231',
      'Dallas',
      'TX',
      'Please call to coordinate drop off in parking lot: 214-345-7500',
      'Yes if unused!',
      '32.8811',
      '-96.762478'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'OnPointe Dallas'
        AND o.latitude = '32.8811'
        AND o.longitude = '-96.762478'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'OnPointe Dallas'
        AND o.latitude = '32.8811'
        AND o.longitude = '-96.762478'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'OnPointe Dallas'
        AND o.latitude = '32.8811'
        AND o.longitude = '-96.762478'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'OnPointe Dallas'
        AND o.latitude = '32.8811'
        AND o.longitude = '-96.762478'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'OnPointe Dallas'
        AND o.latitude = '32.8811'
        AND o.longitude = '-96.762478'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'OnPointe Dallas'
        AND o.latitude = '32.8811'
        AND o.longitude = '-96.762478'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'OnPointe Dallas'
        AND o.latitude = '32.8811'
        AND o.longitude = '-96.762478'));

COMMIT;
