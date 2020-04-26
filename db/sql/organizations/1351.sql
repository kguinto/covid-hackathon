
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
      'St. Edna Subacute and Rehabilitation Center',
      '1929 N Fairview St
Santa Ana, CA 92706',
      'Santa Ana',
      'CA',
      'Parking Lot - South west corner of parking lot',
      'Yes',
      '33.7637393',
      '-117.9022435'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Edna Subacute and Rehabilitation Center'
        AND o.latitude = '33.7637393'
        AND o.longitude = '-117.9022435'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Edna Subacute and Rehabilitation Center'
        AND o.latitude = '33.7637393'
        AND o.longitude = '-117.9022435'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Edna Subacute and Rehabilitation Center'
        AND o.latitude = '33.7637393'
        AND o.longitude = '-117.9022435'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Edna Subacute and Rehabilitation Center'
        AND o.latitude = '33.7637393'
        AND o.longitude = '-117.9022435'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Edna Subacute and Rehabilitation Center'
        AND o.latitude = '33.7637393'
        AND o.longitude = '-117.9022435'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Edna Subacute and Rehabilitation Center'
        AND o.latitude = '33.7637393'
        AND o.longitude = '-117.9022435'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Edna Subacute and Rehabilitation Center'
        AND o.latitude = '33.7637393'
        AND o.longitude = '-117.9022435'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Edna Subacute and Rehabilitation Center'
        AND o.latitude = '33.7637393'
        AND o.longitude = '-117.9022435'));

COMMIT;
