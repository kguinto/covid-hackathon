
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
      'UPMC Magee-Women''s Hospital - Anesthesia Department',
      '4840 Harrison St, Apartment 210
Pittsburgh, PA 15201',
      'Pittsburgh',
      'PA',
      'Residential address. FedEx, USPS, UPS. I was the recipient of a small bowel transplant in June of 2019 and am on immunosuppressants. During this time, I work as a nurse anesthetist in the OR, and we have not been given N95 masks.',
      'Unsure',
      '40.4778266',
      '-79.9583085'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'UPMC Magee-Women''s Hospital - Anesthesia Department'
        AND o.latitude = '40.4778266'
        AND o.longitude = '-79.9583085'));

COMMIT;
