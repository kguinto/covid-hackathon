
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
      'Ochsner LA State University Health Shreveport - Academic Medical Center',
      '1541 Kings Hwy
Shreveport, LA 71103',
      'Shreveport',
      'LA',
      'Receiving Dock, ATTN: Olivia Jones, PPE Manager, phone #: (318) 218-1803
Shipping Address: 1541 Kings Hwy, Shreveport, LA 71103',
      'Yes',
      '32.4809063',
      '-93.7607332'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Ochsner LA State University Health Shreveport - Academic Medical Center'
        AND o.latitude = '32.4809063'
        AND o.longitude = '-93.7607332'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Ochsner LA State University Health Shreveport - Academic Medical Center'
        AND o.latitude = '32.4809063'
        AND o.longitude = '-93.7607332'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Ochsner LA State University Health Shreveport - Academic Medical Center'
        AND o.latitude = '32.4809063'
        AND o.longitude = '-93.7607332'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Ochsner LA State University Health Shreveport - Academic Medical Center'
        AND o.latitude = '32.4809063'
        AND o.longitude = '-93.7607332'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Ochsner LA State University Health Shreveport - Academic Medical Center'
        AND o.latitude = '32.4809063'
        AND o.longitude = '-93.7607332'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Ochsner LA State University Health Shreveport - Academic Medical Center'
        AND o.latitude = '32.4809063'
        AND o.longitude = '-93.7607332'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Ochsner LA State University Health Shreveport - Academic Medical Center'
        AND o.latitude = '32.4809063'
        AND o.longitude = '-93.7607332'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Ochsner LA State University Health Shreveport - Academic Medical Center'
        AND o.latitude = '32.4809063'
        AND o.longitude = '-93.7607332'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Ochsner LA State University Health Shreveport - Academic Medical Center'
        AND o.latitude = '32.4809063'
        AND o.longitude = '-93.7607332'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Endotracheal tubes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Ochsner LA State University Health Shreveport - Academic Medical Center'
        AND o.latitude = '32.4809063'
        AND o.longitude = '-93.7607332'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('facemasks >N95 protection level (e.g. N99 or above)',
    (SELECT id FROM organizations o
      WHERE o.name = 'Ochsner LA State University Health Shreveport - Academic Medical Center'
        AND o.latitude = '32.4809063'
        AND o.longitude = '-93.7607332'));

COMMIT;
