
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
      'Cambridge Health Alliance',
      '1493 Cambridge St
Cambridge, MA 02139',
      'Cambridge',
      'MA',
      'Please bring masks to any of our hospitals (Somerville Hospital, Cambridge Hospital or Everett Hospital) to the safety officer desk right inside the entrance. Please provide your name and contact information because we want to thank you. If you are unable to leave your home, we are happy to pick up the items. Please email Julia Saggesse (jsaggese@challiance.org)and we will make arrangements to pick them up. If you would like to mail the masks send them to the Somerville Hospital 236 Highland Ave. Somerville Ma 02143 Attention Mary Cassesso CHA Foundation.',
      'Yes . Home-sewn will be washed.',
      '42.3748024',
      '-71.1042804'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Cambridge Health Alliance'
        AND o.latitude = '42.3748024'
        AND o.longitude = '-71.1042804'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical Masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Cambridge Health Alliance'
        AND o.latitude = '42.3748024'
        AND o.longitude = '-71.1042804'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety Goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Cambridge Health Alliance'
        AND o.latitude = '42.3748024'
        AND o.longitude = '-71.1042804'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Paper Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Cambridge Health Alliance'
        AND o.latitude = '42.3748024'
        AND o.longitude = '-71.1042804'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Home-sewn masks using https://www.craftpassion.com/face-mask-sewing-pattern/. We ask that you use cotton such as cotton sheets- two layers of material on the mask',
    (SELECT id FROM organizations o
      WHERE o.name = 'Cambridge Health Alliance'
        AND o.latitude = '42.3748024'
        AND o.longitude = '-71.1042804'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('please. Two layers are relatively easy to breathe through and provide about 60% of the protection of a surgical mask. We also ask that you put a "pocket" on the inside of the mask so that we can insert a filter if we are able to find them. It has been suggested that we use vacuum cleaner bag filters so if you can find them as well',
    (SELECT id FROM organizations o
      WHERE o.name = 'Cambridge Health Alliance'
        AND o.latitude = '42.3748024'
        AND o.longitude = '-71.1042804'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('we would appreciate those donations.  If you have elastic and prefer to use that instead of ties that is up to you and much appreciated.',
    (SELECT id FROM organizations o
      WHERE o.name = 'Cambridge Health Alliance'
        AND o.latitude = '42.3748024'
        AND o.longitude = '-71.1042804'));

COMMIT;
