
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
      'Sunset Estates of Purcell',
      '915 N 7th Ave
Purcell, OK 73080',
      'Purcell',
      'OK',
      'Drop off at the front door.  Ring the doorbell and it will be taken care of by staff.',
      'Yes',
      '35.0244153',
      '-97.369028'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sunset Estates of Purcell'
        AND o.latitude = '35.0244153'
        AND o.longitude = '-97.369028'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sunset Estates of Purcell'
        AND o.latitude = '35.0244153'
        AND o.longitude = '-97.369028'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sunset Estates of Purcell'
        AND o.latitude = '35.0244153'
        AND o.longitude = '-97.369028'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sunset Estates of Purcell'
        AND o.latitude = '35.0244153'
        AND o.longitude = '-97.369028'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sunset Estates of Purcell'
        AND o.latitude = '35.0244153'
        AND o.longitude = '-97.369028'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sunset Estates of Purcell'
        AND o.latitude = '35.0244153'
        AND o.longitude = '-97.369028'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sunset Estates of Purcell'
        AND o.latitude = '35.0244153'
        AND o.longitude = '-97.369028'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sunset Estates of Purcell'
        AND o.latitude = '35.0244153'
        AND o.longitude = '-97.369028'));

COMMIT;
