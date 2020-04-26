
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
      'One Medical (DC)',
      '1827 Adams Mill Rd NW suite C
Washington, DC 20009',
      'Washington',
      'DC',
      'Drop off between 12-1pm! Or Mail to 1627 I st NW  Washington DC ',
      'Yes',
      '38.923447',
      '-77.043176'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'One Medical (DC)'
        AND o.latitude = '38.923447'
        AND o.longitude = '-77.043176'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'One Medical (DC)'
        AND o.latitude = '38.923447'
        AND o.longitude = '-77.043176'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'One Medical (DC)'
        AND o.latitude = '38.923447'
        AND o.longitude = '-77.043176'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'One Medical (DC)'
        AND o.latitude = '38.923447'
        AND o.longitude = '-77.043176'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'One Medical (DC)'
        AND o.latitude = '38.923447'
        AND o.longitude = '-77.043176'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'One Medical (DC)'
        AND o.latitude = '38.923447'
        AND o.longitude = '-77.043176'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'One Medical (DC)'
        AND o.latitude = '38.923447'
        AND o.longitude = '-77.043176'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'One Medical (DC)'
        AND o.latitude = '38.923447'
        AND o.longitude = '-77.043176'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'One Medical (DC)'
        AND o.latitude = '38.923447'
        AND o.longitude = '-77.043176'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'One Medical (DC)'
        AND o.latitude = '38.923447'
        AND o.longitude = '-77.043176'));

COMMIT;
