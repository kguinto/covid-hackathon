
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
      'Robert Wood Johnson University Hospital',
      '1 Robert Wood Johnson Pl
New Brunswick, NJ 08901',
      'New Brunswick',
      'NJ',
      'Please email the Medical Staff Office at rwjnbma@rwjbh.org and the RWJUH Command Center at rwjnb-command@rwjbh.org with all offers and donation-related questions.',
      '',
      '40.4958252',
      '-74.4496613'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('',
    (SELECT id FROM organizations o
      WHERE o.name = 'Robert Wood Johnson University Hospital'
        AND o.latitude = '40.4958252'
        AND o.longitude = '-74.4496613'));

COMMIT;
