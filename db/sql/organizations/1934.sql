
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
      'Banner Del Webb Medical Center',
      '14502 W Meeker Blvd
Sun City West, AZ 85375',
      'Sun City',
      'AZ',
      'Mailing address as listed above, or may drop off. Please make it ATTN: ANESTHESIA DEPARTMENT',
      'Yes',
      '33.6599234',
      '-112.3728842'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Banner Del Webb Medical Center'
        AND o.latitude = '33.6599234'
        AND o.longitude = '-112.3728842'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Banner Del Webb Medical Center'
        AND o.latitude = '33.6599234'
        AND o.longitude = '-112.3728842'));

COMMIT;
