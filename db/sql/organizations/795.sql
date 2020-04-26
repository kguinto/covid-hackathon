
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
      'Kaweah Delta Medical Center',
      '1041 N. Woodland Street, Apartment 202
Visalia, CA, 93291',
      'Visalia',
      'CA',
      'Residential. Ship using UPS, FedEx, USPS. ATTN: Dr. Brian Ho',
      'No',
      '36.3382749',
      '-119.3187'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaweah Delta Medical Center'
        AND o.latitude = '36.3382749'
        AND o.longitude = '-119.3187'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaweah Delta Medical Center'
        AND o.latitude = '36.3382749'
        AND o.longitude = '-119.3187'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaweah Delta Medical Center'
        AND o.latitude = '36.3382749'
        AND o.longitude = '-119.3187'));

COMMIT;
