
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
      'Reston Hospital',
      '1850 Town Center Pkwy
Reston, VA 20190',
      'Reston',
      'VA',
      'Main Hospital entrance. Tell receptionist or guard that you have donations',
      'Yes',
      '38.9626797',
      '-77.363936'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Reston Hospital'
        AND o.latitude = '38.9626797'
        AND o.longitude = '-77.363936'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Reston Hospital'
        AND o.latitude = '38.9626797'
        AND o.longitude = '-77.363936'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Reston Hospital'
        AND o.latitude = '38.9626797'
        AND o.longitude = '-77.363936'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Reston Hospital'
        AND o.latitude = '38.9626797'
        AND o.longitude = '-77.363936'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Reston Hospital'
        AND o.latitude = '38.9626797'
        AND o.longitude = '-77.363936'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Reston Hospital'
        AND o.latitude = '38.9626797'
        AND o.longitude = '-77.363936'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Reston Hospital'
        AND o.latitude = '38.9626797'
        AND o.longitude = '-77.363936'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Reston Hospital'
        AND o.latitude = '38.9626797'
        AND o.longitude = '-77.363936'));

COMMIT;
