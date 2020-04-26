
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
      'Concord Hospital',
      '250 Pleasant St
Concord, NH 03301',
      'Concord',
      'NH',
      'We''re urgently requesting new N95 masks and hand sanitizer. Community members may deliver their contributions of masks and sanitizer to our Hospital''s Visitor Entrance daily from 5:30 am to 8 pm.',
      'Unclear',
      '43.1975246',
      '-71.5619313'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Concord Hospital'
        AND o.latitude = '43.1975246'
        AND o.longitude = '-71.5619313'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Concord Hospital'
        AND o.latitude = '43.1975246'
        AND o.longitude = '-71.5619313'));

COMMIT;
