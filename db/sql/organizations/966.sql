
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
      'Visiting Angels ',
      '707 S Main St, #201
Georgetown, TX 78626',
      'Georgetown ',
      'TX',
      'Can leave at the door and notify 512-922-8979 when delivered for pick up ',
      'Yes',
      '30.6371177',
      '-97.6767489'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Visiting Angels '
        AND o.latitude = '30.6371177'
        AND o.longitude = '-97.6767489'));

COMMIT;
