
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
      'Foothill Regional Medical Center',
      '14662 Newport Ave
Tustin, CA 92780',
      'Tustin',
      'CA',
      'Curbside front of ER. Call the ICU and ask for Charge Nurse (714) 619-7790',
      'Yes',
      '33.7305509',
      '-117.8283481'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Foothill Regional Medical Center'
        AND o.latitude = '33.7305509'
        AND o.longitude = '-117.8283481'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Foothill Regional Medical Center'
        AND o.latitude = '33.7305509'
        AND o.longitude = '-117.8283481'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Foothill Regional Medical Center'
        AND o.latitude = '33.7305509'
        AND o.longitude = '-117.8283481'));

COMMIT;
