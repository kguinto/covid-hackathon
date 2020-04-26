
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
      'Legacy Health System',
      'N/A',
      'Portland',
      'OR',
      'Please contact giving@lhs.org',
      'Unknown',
      'N/A',
      '65'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Legacy Health System'
        AND o.latitude = 'N/A'
        AND o.longitude = '65'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Powered',
    (SELECT id FROM organizations o
      WHERE o.name = 'Legacy Health System'
        AND o.latitude = 'N/A'
        AND o.longitude = '65'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('air-purifying respirator (PAPR)',
    (SELECT id FROM organizations o
      WHERE o.name = 'Legacy Health System'
        AND o.latitude = 'N/A'
        AND o.longitude = '65'));

COMMIT;
