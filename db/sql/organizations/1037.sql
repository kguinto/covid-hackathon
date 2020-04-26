
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
      'Brookside Healthcare',
      '105 Terracina Blvd
Redlands, CA 92373',
      'Redlands ',
      'CA',
      'At the front desk',
      'Yes',
      '34.0441046',
      '-117.2111125'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Brookside Healthcare'
        AND o.latitude = '34.0441046'
        AND o.longitude = '-117.2111125'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Brookside Healthcare'
        AND o.latitude = '34.0441046'
        AND o.longitude = '-117.2111125'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Brookside Healthcare'
        AND o.latitude = '34.0441046'
        AND o.longitude = '-117.2111125'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Brookside Healthcare'
        AND o.latitude = '34.0441046'
        AND o.longitude = '-117.2111125'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Brookside Healthcare'
        AND o.latitude = '34.0441046'
        AND o.longitude = '-117.2111125'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Brookside Healthcare'
        AND o.latitude = '34.0441046'
        AND o.longitude = '-117.2111125'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Brookside Healthcare'
        AND o.latitude = '34.0441046'
        AND o.longitude = '-117.2111125'));

COMMIT;
