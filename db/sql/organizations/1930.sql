
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
      'Banner Boswell Medical Center',
      '10401 W Thunderbird Blvd
Sun City, AZ 85351',
      'Sun City',
      'AZ',
      'Please mail to above listed address. ATTN: Anesthesia Department',
      'Yes',
      '33.6036764',
      '-112.2842245'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Banner Boswell Medical Center'
        AND o.latitude = '33.6036764'
        AND o.longitude = '-112.2842245'));

COMMIT;
