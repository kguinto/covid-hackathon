
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
      'Health Plus Management ',
      '50 Charles Lindbergh Blvd Suite 103
Uniondale, NY 11553',
      'Uniondale ',
      'NY',
      'Salvatore Passanisi ',
      'No',
      '40.7225368',
      '-73.6023822'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Health Plus Management '
        AND o.latitude = '40.7225368'
        AND o.longitude = '-73.6023822'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Health Plus Management '
        AND o.latitude = '40.7225368'
        AND o.longitude = '-73.6023822'));

COMMIT;
