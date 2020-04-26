
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
      'Regal Medical Group and Lakeside Community Healthcare',
      '8510 Balboa Blvd #150
Northridge, CA 91325',
      'Northridge',
      'CA',
      '8510 BALBOA BLVD
STE 150 - if no one there, call Ronnique Crider - 818-810-4628(desk) 818-661-9173(cell)',
      'No',
      '34.2245502',
      '-118.50145'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('6" plastic nasal swabs',
    (SELECT id FROM organizations o
      WHERE o.name = 'Regal Medical Group and Lakeside Community Healthcare'
        AND o.latitude = '34.2245502'
        AND o.longitude = '-118.50145'));

COMMIT;
