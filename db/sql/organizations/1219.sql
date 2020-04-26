
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
      'Palmetto General Hospital ',
      '2001 W 68th St
Hialeah, FL 33016',
      'Hialeah',
      'FL',
      '2001 W 68th St
Suite 202
Medical Education building 
ATTENTION: DR NATALIE DONN',
      'Yes',
      '25.8847708',
      '-80.3285219'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Palmetto General Hospital '
        AND o.latitude = '25.8847708'
        AND o.longitude = '-80.3285219'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Palmetto General Hospital '
        AND o.latitude = '25.8847708'
        AND o.longitude = '-80.3285219'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Palmetto General Hospital '
        AND o.latitude = '25.8847708'
        AND o.longitude = '-80.3285219'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Palmetto General Hospital '
        AND o.latitude = '25.8847708'
        AND o.longitude = '-80.3285219'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Palmetto General Hospital '
        AND o.latitude = '25.8847708'
        AND o.longitude = '-80.3285219'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Palmetto General Hospital '
        AND o.latitude = '25.8847708'
        AND o.longitude = '-80.3285219'));

COMMIT;
