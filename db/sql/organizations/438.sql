
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
      'Community Health Systems Inc',
      '22675 Alessandro Blvd # 1
Moreno Valley, CA 92553',
      'Moreno Valley',
      'CA',
      'delivery',
      'unsure',
      '33.915934',
      '-117.2671064'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Health Systems Inc'
        AND o.latitude = '33.915934'
        AND o.longitude = '-117.2671064'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Health Systems Inc'
        AND o.latitude = '33.915934'
        AND o.longitude = '-117.2671064'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Health Systems Inc'
        AND o.latitude = '33.915934'
        AND o.longitude = '-117.2671064'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Health Systems Inc'
        AND o.latitude = '33.915934'
        AND o.longitude = '-117.2671064'));

COMMIT;
