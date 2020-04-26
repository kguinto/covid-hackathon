
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
      'Treasure Valley Midwives',
      '207 W Washington St
Boise, ID 83702',
      'Boise',
      'ID',
      'Mailing address:
ATTN: Metta, Treasure Valley Midwives
207 W Washington St
Boise ID 83702
If dropping off, there is a back door, downstairs (visible from the back parking lot). Items can be left in front of the downstairs door any time. ',
      'Yes',
      '43.6158651',
      '-116.1932735'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Treasure Valley Midwives'
        AND o.latitude = '43.6158651'
        AND o.longitude = '-116.1932735'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Treasure Valley Midwives'
        AND o.latitude = '43.6158651'
        AND o.longitude = '-116.1932735'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Treasure Valley Midwives'
        AND o.latitude = '43.6158651'
        AND o.longitude = '-116.1932735'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Treasure Valley Midwives'
        AND o.latitude = '43.6158651'
        AND o.longitude = '-116.1932735'));

COMMIT;
