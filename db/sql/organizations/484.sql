
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
      'Hunterdon Medical Center',
      '2100 Wescott Dr
Flemington, NJ 08822',
      'Flemington',
      'NJ',
      'Call to set up',
      '',
      '40.5314853',
      '-74.86113'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Bouffant style surgical caps',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hunterdon Medical Center'
        AND o.latitude = '40.5314853'
        AND o.longitude = '-74.86113'));

COMMIT;
