
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
      'AppleCare Immediate Care, LLC',
      '1111 Glynco Pkwy Building 1 Suite 10
Brunswick, GA 31525',
      'Brunswick',
      'GA',
      'Mail or pick up',
      'unsure',
      '31.2415734',
      '-81.4993313'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'AppleCare Immediate Care, LLC'
        AND o.latitude = '31.2415734'
        AND o.longitude = '-81.4993313'));

COMMIT;
