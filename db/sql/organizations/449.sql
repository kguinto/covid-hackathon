
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
      'Rio Hondo Subacute and Nursing Center',
      '273 E Beverly Blvd
Montebello, CA 90640 ',
      'Los Angeles ',
      'CA',
      'Go to receptionist, attn. Dr. Blanca Stella Fajardo ',
      'No',
      '34.0139737',
      '-118.0943183'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Rio Hondo Subacute and Nursing Center'
        AND o.latitude = '34.0139737'
        AND o.longitude = '-118.0943183'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Rio Hondo Subacute and Nursing Center'
        AND o.latitude = '34.0139737'
        AND o.longitude = '-118.0943183'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Rio Hondo Subacute and Nursing Center'
        AND o.latitude = '34.0139737'
        AND o.longitude = '-118.0943183'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Rio Hondo Subacute and Nursing Center'
        AND o.latitude = '34.0139737'
        AND o.longitude = '-118.0943183'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Rio Hondo Subacute and Nursing Center'
        AND o.latitude = '34.0139737'
        AND o.longitude = '-118.0943183'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Rio Hondo Subacute and Nursing Center'
        AND o.latitude = '34.0139737'
        AND o.longitude = '-118.0943183'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Rio Hondo Subacute and Nursing Center'
        AND o.latitude = '34.0139737'
        AND o.longitude = '-118.0943183'));

COMMIT;
