
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
      'Burke Rehabilitation Hospital',
      '785 Mamaroneck Ave
White Plains, NY 10605',
      'White Plains',
      'NY',
      'Attn: Nursing Office, Burke Rehabilitation Hospital, 785 Mamaroneck Ave, White Plains, NY 10605',
      'No',
      '41.0165329',
      '-73.7521048'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Burke Rehabilitation Hospital'
        AND o.latitude = '41.0165329'
        AND o.longitude = '-73.7521048'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Burke Rehabilitation Hospital'
        AND o.latitude = '41.0165329'
        AND o.longitude = '-73.7521048'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Burke Rehabilitation Hospital'
        AND o.latitude = '41.0165329'
        AND o.longitude = '-73.7521048'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Burke Rehabilitation Hospital'
        AND o.latitude = '41.0165329'
        AND o.longitude = '-73.7521048'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Burke Rehabilitation Hospital'
        AND o.latitude = '41.0165329'
        AND o.longitude = '-73.7521048'));

COMMIT;
