
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
      'Medical Associates Clinic',
      '1500 Associates Dr
Dubuque, IA 52002',
      'Dubuque',
      'IA',
      '',
      'Unsure',
      '42.4959459',
      '-90.7368716'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Medical Associates Clinic'
        AND o.latitude = '42.4959459'
        AND o.longitude = '-90.7368716'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Medical Associates Clinic'
        AND o.latitude = '42.4959459'
        AND o.longitude = '-90.7368716'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Medical Associates Clinic'
        AND o.latitude = '42.4959459'
        AND o.longitude = '-90.7368716'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Masks & Gowns - Anything will do',
    (SELECT id FROM organizations o
      WHERE o.name = 'Medical Associates Clinic'
        AND o.latitude = '42.4959459'
        AND o.longitude = '-90.7368716'));

COMMIT;
