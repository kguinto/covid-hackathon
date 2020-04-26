
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
      'Ripley Medical Clinic',
      '202 Tucker Ave
Ripley, TN 38063',
      'Ripley',
      'TN',
      'Attn:Cynthia',
      'Yes',
      '35.7427938',
      '-89.5387797'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Ripley Medical Clinic'
        AND o.latitude = '35.7427938'
        AND o.longitude = '-89.5387797'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Ripley Medical Clinic'
        AND o.latitude = '35.7427938'
        AND o.longitude = '-89.5387797'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Ripley Medical Clinic'
        AND o.latitude = '35.7427938'
        AND o.longitude = '-89.5387797'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Ripley Medical Clinic'
        AND o.latitude = '35.7427938'
        AND o.longitude = '-89.5387797'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Ripley Medical Clinic'
        AND o.latitude = '35.7427938'
        AND o.longitude = '-89.5387797'));

COMMIT;
